part of 'purchase_bloc.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = _Initial;
  const factory PurchaseState.loading() = _Loading;
  const factory PurchaseState.success(List<PurchaseModel> purchases) = _Success;
  const factory PurchaseState.error(String? message) = _Error;
}
