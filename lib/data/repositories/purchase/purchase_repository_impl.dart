
import 'package:toko_kita/data/repositories/purchase/purchase_repository.dart';

import '../../datasource/remote/purchase/purchase_datasource.dart';
import '../../models/purchase/purchase_model.dart';

class PurchaseRepositoryImpl implements PurchaseRepository {
  final PurchaseDatasource remoteDataSource;

  PurchaseRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<void> addPurchase(PurchaseModel purchase) {
    return remoteDataSource.addPurchase(purchase);
  }

  @override
  Future<List<PurchaseModel>> getAllPurchases() {
    return remoteDataSource.getAllPurchases();
  }

  @override
  Future<void> deletePurchase(String id) {
    return remoteDataSource.deletePurchase(id);
  }

  @override
  Future<PurchaseModel?> getPurchaseById(String id) {
    return remoteDataSource.getPurchaseById(id);
  }

  @override
  Future<int> getHPPandConsumeFIFO({required String productId, required int quantity}) async {
    final batches = await remoteDataSource.getPurchaseBatches(productId);
    int remaining = quantity;
    int totalHPP = 0;

    for (final batch in batches) {
      if (remaining == 0) break;

      final int available = batch['quantity'];
      final int take = remaining > available ? available : remaining;

      totalHPP += take * (batch['purchasePrice'] as int);
      remaining -= take;

      final int newQty = available - take;
      await remoteDataSource.updatePurchaseQuantity(batch['id'], newQty);
    }

    if (remaining > 0) {
      throw Exception("Insufficient stock to complete this sale");
    }

    return totalHPP;
  }

  @override
  Future<int> getCurrentStock(String productId) {
    return remoteDataSource.getCurrentStock(productId);
  }
}