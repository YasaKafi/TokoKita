import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository.dart';

import '../../../data/models/sale/sale_model.dart';
import '../../../data/repositories/sale/sale_repository.dart';

part 'sale_event.dart';
part 'sale_state.dart';
part 'sale_bloc.freezed.dart';

class SaleBloc extends Bloc<SaleEvent, SaleState> {
  final SaleRepository _repository;
  final PurchaseRepository _purchaseRepository;

  SaleBloc({required SaleRepository saleRepository, required PurchaseRepository purchaseRepository}) : _repository = saleRepository, _purchaseRepository = purchaseRepository, super(const SaleState.initial()) {
    on<_AddSale>(_onAddSale);
    on<_GetAllSale>(_onGetAllSales);
  }

  Future<void> _onAddSale(_AddSale event, Emitter<SaleState> emit) async {
    emit(const SaleState.loading());
    try {
      final hpp = await _purchaseRepository.getHPPandConsumeFIFO(
        productId: event.sale.productId,
        quantity: event.sale.quantity,
      );

      final saleWithHPP = event.sale.copyWith(hpp: hpp);
      await _repository.addSale(saleWithHPP);
      add(const SaleEvent.getAllSales());
    } catch (e) {
      emit(SaleState.error(e.toString()));
    }
  }

  Future<void> _onGetAllSales(_GetAllSale event, Emitter<SaleState> emit) async {
    emit(const SaleState.loading());
    try {
      final sales = await _repository.getAllSales();
      emit(SaleState.success(sales));
    } catch (e) {
      emit(SaleState.error(e.toString()));
    }
  }
}
