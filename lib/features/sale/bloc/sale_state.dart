part of 'sale_bloc.dart';

@freezed
class SaleState with _$SaleState {
  const factory SaleState.initial() = _Initial;
  const factory SaleState.loading() = _Loading;
  const factory SaleState.success(List<SaleModel> sales) = _Success;
  const factory SaleState.error(String? message) = _Error;
}
