
import 'package:toko_kita/data/models/report/daily_report_model.dart';

import '../../models/report/report_model.dart';

abstract class ReportRepository {
  Future<List<MonthlyReportModel>> getMonthlyReports();
  Future<List<DailyReportModel>> getDailyReports({required int days});
}