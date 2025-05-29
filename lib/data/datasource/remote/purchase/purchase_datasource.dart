import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../models/purchase/purchase_model.dart';

class PurchaseDatasource {
  final FirebaseFirestore _firestore;
  final String _collection = 'purchases';

  // Tambahkan constructor dengan parameter opsional untuk testing
  PurchaseDatasource({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> addPurchase(PurchaseModel purchase) async {
    final doc = _firestore.collection(_collection).doc();
    await doc.set(purchase.copyWith(id: doc.id).toJson());
  }

  Future<List<PurchaseModel>> getAllPurchases() async {
    final snapshot = await _firestore.collection(_collection).orderBy('purchaseDate', descending: true).get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      return PurchaseModel.fromJson(data).copyWith(id: doc.id);
    }).toList();
  }

  Future<void> deletePurchase(String id) async {
    await _firestore.collection(_collection).doc(id).delete();
  }

  Future<PurchaseModel?> getPurchaseById(String id) async {
    final doc = await _firestore.collection(_collection).doc(id).get();
    if (!doc.exists) return null;
    return PurchaseModel.fromJson(doc.data()!).copyWith(id: doc.id);
  }

  Future<List<Map<String, dynamic>>> getPurchaseBatches(String productId) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('productId', isEqualTo: productId)
        .orderBy('purchaseDate')
        .get();

    return snapshot.docs.map((doc) {
      final data = doc.data();
      return {
        'id': doc.id,
        'quantity': data['quantity'] as int,
        'originalQuantity': data['originalQuantity'] as int?,
        'purchasePrice': data['purchasePrice'] as int,
      };
    }).toList();
  }

  Future<void> updatePurchaseQuantity(String docId, int newQuantity) async {
    await _firestore.collection(_collection).doc(docId).update({'quantity': newQuantity});
  }

  Future<int> getCurrentStock(String productId) async {
    final snapshot = await _firestore
        .collection(_collection)
        .where('productId', isEqualTo: productId)
        .get();

    int total = 0;
    for (var doc in snapshot.docs) {
      final data = doc.data();
      total += (data['quantity'] ?? 0) as int;
    }

    return total;
  }

  Future<int> getHPPPreview({
    required String productId,
    required int quantity,
  }) async {
    final batches = await getPurchaseBatches(productId);

    int remaining = quantity;
    int totalHPP = 0;

    final totalOriginalQty = batches.fold<int>(0, (sum, batch) => sum + (batch['originalQuantity'] ?? 0) as int);

    for (final batch in batches) {
      if (remaining == 0) break;

      // Use 'originalQuantity' if available, otherwise fallback to 'quantity'
      final int originalQty = (batch['originalQuantity'] ?? batch['quantity'] ?? 0) as int;
      if (originalQty <= 0) continue;

      final int take = remaining > originalQty ? originalQty : remaining;

      totalHPP += take * (batch['purchasePrice'] as int);
      remaining -= take;
    }

    if (remaining > 0) {
      throw Exception("Insufficient batch quantity to simulate this sale (FIFO preview)");
    }

    return totalHPP;
  }

  Future<void> updatePurchaseBatch(String productId, List<Map<String, dynamic>> updatedBatches) async {
    for (final batch in updatedBatches) {
      await _firestore.collection(_collection).doc(batch['id']).update({
        'quantity': batch['quantity'],
        'originalQuantity': batch['originalQuantity'],
      });
    }
  }

  Future<void> savePurchaseBatch({
    required String productId,
    required int quantity,
    required int purchasePrice,
  }) async {
    final doc = _firestore.collection(_collection).doc();
    await doc.set({
      'id': doc.id,
      'productId': productId,
      'quantity': quantity,
      'originalQuantity': quantity,
      'purchasePrice': purchasePrice,
      'purchaseDate': FieldValue.serverTimestamp(),
    });
  }
}