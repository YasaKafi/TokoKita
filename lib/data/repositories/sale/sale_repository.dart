
import '../../models/sale/sale_model.dart';

abstract class SaleRepository {
  Future<void> addSale(SaleModel sale);
  Future<List<SaleModel>> getAllSales();
}