import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toko_kita/data/repositories/product/product_repository.dart';
import 'package:toko_kita/data/repositories/purchase/purchase_repository.dart';

import '../../../data/models/product/product_model.dart';

part 'stock_event.dart';
part 'stock_state.dart';
part 'stock_bloc.freezed.dart';

class StockBloc extends Bloc<StockEvent, StockState> {
  final ProductRepository _repository;
  final PurchaseRepository _purchaseRepository;

  StockBloc({required ProductRepository productRepository, required PurchaseRepository purchaseRepository})
      : _repository = productRepository, _purchaseRepository = purchaseRepository, super(const StockState.initial()) {
    on<GetAllProducts>(_onGetAll);
    on<GetProductById>(_onGetById);
    on<AddProduct>(_onAdd);
    on<UpdateProduct>(_onUpdate);
    on<DeleteProduct>(_onDelete);
  }

  Future<void> _onGetAll(GetAllProducts event, Emitter<StockState> emit) async {
    emit(const StockState.loading());
    try {
      final products = await _repository.getProducts();

      for (final product in products) {
        final stock = await _purchaseRepository.getCurrentStock(product.id ?? '');
        print("Stok tersisa untuk ${product.name}: $stock");
      }

      final currentStockResolved = <String, int>{};
      for (final product in products) {
        final stock = await _purchaseRepository.getCurrentStock(product.id ?? '');
        currentStockResolved[product.id ?? ''] = stock;
      }

      emit(StockState.success(
        products: products,
        selected: null,
        currentStock: currentStockResolved
      ));
    } catch (e) {
      emit(StockState.error(e.toString()));
    }
  }

  Future<void> _onGetById(GetProductById event, Emitter<StockState> emit) async {
    emit(const StockState.loading());
    try {
      final product = await _repository.getProductById(event.id);
      if (product == null) {
        emit(const StockState.error("Product not found"));
      } else {
        emit(StockState.success(products: [], selected: product));
      }
    } catch (e) {
      emit(StockState.error(e.toString()));
    }
  }

  Future<void> _onAdd(AddProduct event, Emitter<StockState> emit) async {
    emit(const StockState.loading());
    try {
      await _repository.addProduct(event.product);
      add(const StockEvent.getAll()); // refresh list
    } catch (e) {
      emit(StockState.error(e.toString()));
    }
  }

  Future<void> _onUpdate(UpdateProduct event, Emitter<StockState> emit) async {
    emit(const StockState.loading());
    try {
      await _repository.updateProduct(id: event.id, product: event.updated);
      add(const StockEvent.getAll());
    } catch (e) {
      emit(StockState.error(e.toString()));
    }
  }

  Future<void> _onDelete(DeleteProduct event, Emitter<StockState> emit) async {
    emit(const StockState.loading());
    try {
      await _repository.deleteProduct(event.id);
      add(const StockEvent.getAll());
    } catch (e) {
      emit(StockState.error(e.toString()));
    }
  }
}


