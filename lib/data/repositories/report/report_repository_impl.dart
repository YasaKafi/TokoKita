

import 'package:intl/intl.dart';
import 'package:toko_kita/data/models/report/daily_report_model.dart';

import '../../datasource/remote/purchase/purchase_datasource.dart';
import '../../datasource/remote/sale/sale_datasource.dart';
import '../../models/report/report_model.dart';
import 'report_repository.dart';

class ReportRepositoryImpl implements ReportRepository {
  final PurchaseDatasource purchaseDatasource;
  final SaleDatasource saleDatasource;

  ReportRepositoryImpl({
    required this.purchaseDatasource,
    required this.saleDatasource,
  });

  @override
  Future<List<MonthlyReportModel>> getMonthlyReports() async {
    final sales = await saleDatasource.getAllSales();
    final purchases = await purchaseDatasource.getAllPurchases();

    final Map<String, MonthlyReportModel> aggregates = {};

// 🔁 Loop Sales (untuk totalSales, totalHPP, grossProfit)
    for (final sale in sales) {
      final key = '${sale.saleDate.year}-${sale.saleDate.month.toString().padLeft(2, '0')}';
      final prev = aggregates[key];

      try {
        final totalHPP = await purchaseDatasource.getHPPPreview(
          productId: sale.productId,
          quantity: sale.quantity,
        );

        final updated = MonthlyReportModel(
          month: sale.saleDate.month,
          year: sale.saleDate.year,
          totalSales: (prev?.totalSales ?? 0) + (sale.quantity * sale.sellingPrice),
          totalHPP: (prev?.totalHPP ?? 0) + totalHPP,
          totalPurchases: prev?.totalPurchases ?? 0,
          grossProfit: (prev?.grossProfit ?? 0) + ((sale.quantity * sale.sellingPrice) - totalHPP),
        );

        aggregates[key] = updated;
      } catch (e) {

        final updated = MonthlyReportModel(
          month: sale.saleDate.month,
          year: sale.saleDate.year,
          totalSales: (prev?.totalSales ?? 0) + (sale.quantity * sale.sellingPrice),
          totalHPP: (prev?.totalHPP ?? 0),
          totalPurchases: prev?.totalPurchases ?? 0,
          grossProfit: (prev?.grossProfit ?? 0) + (sale.quantity * sale.sellingPrice),
        );

        aggregates[key] = updated;
      }
    }

// 🛒 Loop Purchases (untuk totalPurchases)
    for (final purchase in purchases) {
      final key = '${purchase.purchaseDate.year}-${purchase.purchaseDate.month.toString().padLeft(2, '0')}';
      final prev = aggregates[key];

      final updated = MonthlyReportModel(
        month: purchase.purchaseDate.month,
        year: purchase.purchaseDate.year,
        totalSales: prev?.totalSales ?? 0,
        totalHPP: prev?.totalHPP ?? 0,
        totalPurchases: (prev?.totalPurchases ?? 0) + (purchase.originalQuantity * purchase.purchasePrice),
        grossProfit: prev?.grossProfit ?? 0,
      );

      aggregates[key] = updated;
    }

// 🔢 Urutkan berdasarkan bulan
    final sorted = aggregates.values.toList()
      ..sort((a, b) {
        final aDate = DateTime(a.year, a.month);
        final bDate = DateTime(b.year, b.month);
        return aDate.compareTo(bDate);
      });

    return sorted;
  }

  @override
  Future<List<DailyReportModel>> getDailyReports({required int days}) async {
    final now = DateTime.now();
    final from = now.subtract(Duration(days: days - 1));

    final sales = await saleDatasource.getAllSales();
    final filteredSales = sales.where((s) => s.saleDate.isAfter(from)).toList();

    final Map<String, DailyReportModel> map = {};

    for (final sale in filteredSales) {
      final key = DateFormat('yyyy-MM-dd').format(sale.saleDate);
      final date = DateTime(sale.saleDate.year, sale.saleDate.month, sale.saleDate.day);

      try {
        final hpp = await purchaseDatasource.getHPPPreview(
          productId: sale.productId,
          quantity: sale.quantity,
        );

        final prev = map[key];
        map[key] = DailyReportModel(
          date: date,
          totalSales: (prev?.totalSales ?? 0) + (sale.quantity * sale.sellingPrice),
          totalHPP: (prev?.totalHPP ?? 0) + hpp,
          grossProfit: (prev?.grossProfit ?? 0) + ((sale.quantity * sale.sellingPrice) - hpp),
        );
      } catch (_) {
        final prev = map[key];
        map[key] = DailyReportModel(
          date: date,
          totalSales: (prev?.totalSales ?? 0) + (sale.quantity * sale.sellingPrice),
          totalHPP: (prev?.totalHPP ?? 0),
          grossProfit: (prev?.grossProfit ?? 0) + (sale.quantity * sale.sellingPrice),
        );
      }
    }

    final result = map.values.toList();
    result.sort((a, b) => a.date.compareTo(b.date));
    return result;
  }
}