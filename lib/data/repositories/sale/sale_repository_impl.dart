

import 'package:toko_kita/data/repositories/sale/sale_repository.dart';

import '../../datasource/remote/sale/sale_datasource.dart';
import '../../models/sale/sale_model.dart';

class SaleRepositoryImpl implements SaleRepository {
  final SaleDatasource remoteDatasource;

  SaleRepositoryImpl({required this.remoteDatasource});

  @override
  Future<void> addSale(SaleModel sale) {
    return remoteDatasource.addSale(sale);
  }

  @override
  Future<List<SaleModel>> getAllSales() {
    return remoteDatasource.getAllSales();
  }
}