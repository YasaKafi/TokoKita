part of 'stock_bloc.dart';

@freezed
class StockEvent with _$StockEvent {
  const factory StockEvent.getAll() = GetAllProducts;
  const factory StockEvent.getById(String id) = GetProductById;
  const factory StockEvent.add(ProductModel product) = AddProduct;
  const factory StockEvent.update(String id, ProductModel updated) = UpdateProduct;
  const factory StockEvent.delete(String id) = DeleteProduct;
}
