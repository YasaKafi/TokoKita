part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _Initial;
  const factory ReportState.loading() = _Loading;
  const factory ReportState.success({required List<MonthlyReportModel> monthlyReports, required List<DailyReportModel> dailyReports}) = _Success;
  const factory ReportState.error(String message) = _Error;
}
