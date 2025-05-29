import '../../../data/models/report/bar_group_model.dart';
import '../../../data/models/report/daily_report_model.dart';

List<BarGroupModel> convertToBarGroups({
  required List<DailyReportModel> dailyReports,
  required String range,
}) {
  switch (range) {
    case 'Weekly':
      // return 7 entries → group by 1 day
      return dailyReports
          .take(7)
          .map(
            (e) => BarGroupModel(
              label: '${e.date.day}/${e.date.month}',
              grossProfit: e.grossProfit,
            ),
          )
          .toList();



    case '3 Month':
      return _groupByMonth(dailyReports, monthCount: 3);

    case '6 Month':
      return _groupByMonth(dailyReports, monthCount: 6);

    case '1 Year':
      return _groupByMonth(dailyReports, monthCount: 12);

    default:
      return [];
  }
}

List<BarGroupModel> _groupByMonth(
  List<DailyReportModel> reports, {
  required int monthCount,
}) {
  final now = DateTime.now();
  final List<BarGroupModel> result = [];

  for (int i = 0; i < monthCount; i++) {
    final month = now.month - i;
    final year = now.year + (month <= 0 ? -1 : 0);
    final fixedMonth = month > 0 ? month : 12 + month;

    final group = reports.where(
      (r) => r.date.month == fixedMonth && r.date.year == year,
    );

    String _getMonthName(int month, int year) {
      final shortYear = (year % 100).toString().padLeft(2, '0');
      return '$month/$shortYear'; // e.g. 5/25
    }

    result.add(
      BarGroupModel(
        label: _getMonthName(fixedMonth, year),
        grossProfit: group.fold(0, (sum, r) => sum + r.grossProfit),
      ),
    );
  }

  return result.reversed.toList(); // oldest → latest
}
