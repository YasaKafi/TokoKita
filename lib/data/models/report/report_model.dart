import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';

@freezed
class MonthlyReportModel with _$MonthlyReportModel {
  const factory MonthlyReportModel({
    required int month,
    required int year,
    required int totalSales,
    required int totalPurchases,
    required int totalHPP,
    required int grossProfit,
  }) = _MonthlyReportModel;


}