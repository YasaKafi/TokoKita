part of 'purchase_bloc.dart';

@freezed
class PurchaseEvent with _$PurchaseEvent {
  const factory PurchaseEvent.addPurchase(PurchaseModel purchase) = _AddPurchase;
  const factory PurchaseEvent.getAllPurchases() = _GetAllPurchases;
  const factory PurchaseEvent.deletePurchase(String id) = _DeletePurchase;
}
