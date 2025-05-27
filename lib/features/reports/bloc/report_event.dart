part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.getMonthlyReport() = _GetMonthlyReport;
  const factory ReportEvent.getDailyReports({required int days}) = _GetDailyReports;

}
