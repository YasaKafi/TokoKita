import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/purchase/purchase_model.dart';
import '../../../data/models/sale/sale_model.dart';
import '../../../data/repositories/purchase/purchase_repository.dart';
import '../../../data/repositories/sale/sale_repository.dart';

part 'history_transaction_event.dart';
part 'history_transaction_state.dart';
part 'history_transaction_bloc.freezed.dart';

class HistoryTransactionBloc extends Bloc<HistoryTransactionEvent, HistoryTransactionState> {
  final SaleRepository _salesRepository;
  final PurchaseRepository _purchaseRepository;

  HistoryTransactionBloc({
    required SaleRepository salesRepository,
    required PurchaseRepository purchaseRepository,
  }) : _salesRepository = salesRepository, _purchaseRepository = purchaseRepository, super(const HistoryTransactionState.initial()) {
    on<_LoadSales>(_onLoadSales);
    on<_LoadPurchases>(_onLoadPurchases);
  }

  Future<void> _onLoadSales(
      _LoadSales event,
      Emitter<HistoryTransactionState> emit,
      ) async {
    emit(const HistoryTransactionState.loading());
    try {
      final sales = await _salesRepository.getAllSales();
      emit(HistoryTransactionState.success(purchases: [], sales: sales));
    } catch (e) {
      emit(HistoryTransactionState.error(e.toString()));
    }
  }

  Future<void> _onLoadPurchases(
      _LoadPurchases event,
      Emitter<HistoryTransactionState> emit,
      ) async {
    emit(const HistoryTransactionState.loading());
    try {
      final purchases = await _purchaseRepository.getAllPurchases();
      emit(HistoryTransactionState.success(purchases: purchases, sales: []));
    } catch (e) {
      emit(HistoryTransactionState.error(e.toString()));
    }
  }
}