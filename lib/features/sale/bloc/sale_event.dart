part of 'sale_bloc.dart';

@freezed
class SaleEvent with _$SaleEvent {

  const factory SaleEvent.addSale(SaleModel sale) = _AddSale;
  const factory SaleEvent.getAllSales() = _GetAllSale;}
