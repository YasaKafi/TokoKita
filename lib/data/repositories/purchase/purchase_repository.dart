
import '../../models/purchase/purchase_model.dart';

abstract class PurchaseRepository {
  Future<void> addPurchase(PurchaseModel purchase);
  Future<List<PurchaseModel>> getAllPurchases();
  Future<void> deletePurchase(String id);
  Future<PurchaseModel?> getPurchaseById(String id);
  Future<int> getHPPandConsumeFIFO({required String productId, required int quantity});
  Future<int> getCurrentStock(String productId);

}