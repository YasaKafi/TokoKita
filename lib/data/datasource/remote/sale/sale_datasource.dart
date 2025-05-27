import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../models/sale/sale_model.dart';

class SaleDatasource {
  final FirebaseFirestore _firestore;
  final String _collection = 'sales';

  // Tambahkan constructor dengan parameter opsional untuk testing
  SaleDatasource({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<void> addSale(SaleModel sale) async {
    final doc = _firestore.collection(_collection).doc();
    await doc.set(sale.copyWith(id: doc.id).toJson());
  }

  Future<List<SaleModel>> getAllSales() async {
    final snapshot = await _firestore.collection(_collection).get();
    return snapshot.docs.map((doc) {
      final data = doc.data()!;
      return SaleModel.fromJson(data).copyWith(id: doc.id);
    }).toList();
  }
}