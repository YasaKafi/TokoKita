part of 'history_transaction_bloc.dart';

@freezed
class HistoryTransactionState with _$HistoryTransactionState {
  const factory HistoryTransactionState.initial() = _Initial;
  const factory HistoryTransactionState.loading() = _Loading;
  const factory HistoryTransactionState.success({
    List<SaleModel>? sales,
    List<PurchaseModel>? purchases,
  }) = _Success;
  const factory HistoryTransactionState.error(String message) = _Error;
}
