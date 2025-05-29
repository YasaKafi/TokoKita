import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_report_model.freezed.dart';

@freezed
class DailyReportModel with _$DailyReportModel {
  const factory DailyReportModel({
    required DateTime date,
    required int totalSales,
    required int totalHPP,
    required int grossProfit,
  }) = _DailyReportModel;
}