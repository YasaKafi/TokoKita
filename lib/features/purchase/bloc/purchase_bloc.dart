import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/purchase/purchase_model.dart';
import '../../../data/repositories/purchase/purchase_repository.dart';

part 'purchase_event.dart';
part 'purchase_state.dart';
part 'purchase_bloc.freezed.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  final PurchaseRepository _repository;

  PurchaseBloc({required PurchaseRepository purchaseRepository})
      : _repository = purchaseRepository, super(const PurchaseState.initial()) {
    on<_GetAllPurchases>(_onGetAll);
    on<_AddPurchase>(_onAdd);
    on<_DeletePurchase>(_onDelete);
  }

  Future<void> _onGetAll(
      _GetAllPurchases event,
      Emitter<PurchaseState> emit,
      ) async {
    emit(const PurchaseState.loading());
    try {
      final result = await _repository.getAllPurchases();
      emit(PurchaseState.success(result));
    } catch (e) {
      emit(PurchaseState.error(e.toString()));
    }
  }

  Future<void> _onAdd(
      _AddPurchase event,
      Emitter<PurchaseState> emit,
      ) async {
    try {
      await _repository.addPurchase(event.purchase);
      add(const PurchaseEvent.getAllPurchases()); // Refresh after add
    } catch (e) {
      emit(PurchaseState.error(e.toString()));
    }
  }

  Future<void> _onDelete(
      _DeletePurchase event,
      Emitter<PurchaseState> emit,
      ) async {
    try {
      await _repository.deletePurchase(event.id);
      add(const PurchaseEvent.getAllPurchases()); // Refresh after delete
    } catch (e) {
      emit(PurchaseState.error(e.toString()));
    }
  }
}
