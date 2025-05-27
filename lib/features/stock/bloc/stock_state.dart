part of 'stock_bloc.dart';

@freezed
class StockState with _$StockState {
  const factory StockState.initial() = _Initial;
  const factory StockState.loading() = _Loading;
  const factory StockState.success({
    required List<ProductModel> products,
    ProductModel? selected,
    Map<String, int>? currentStock,
  }) = _Success;
  const factory StockState.error(String message) = _Error;

}
