part of 'history_transaction_bloc.dart';

@freezed
class HistoryTransactionEvent with _$HistoryTransactionEvent {
  const factory HistoryTransactionEvent.loadSales() = _LoadSales;
  const factory HistoryTransactionEvent.loadPurchases() = _LoadPurchases;
}
