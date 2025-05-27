import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../data/models/report/report_model.dart';
import '../../../utils/theme.dart';


class BarChartReport extends StatelessWidget {
  final List<MonthlyReportModel> monthlyReports;

  const BarChartReport({super.key, required this.monthlyReports});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          maxY: _getMaxY(),
          barGroups: _buildBarGroups(),
          borderData: FlBorderData(show: true, border: Border.all(color: grey, width: 1)),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                reservedSize: 40,
                showTitles: true,
                interval: _calculateInterval(),
                getTitlesWidget: (value, meta) =>
                    Text(_formatCurrency(value), style: const TextStyle(fontSize: 10)),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index >= 0 && index < monthlyReports.length) {
                    final report = monthlyReports[index];
                    final formatted = '${report.month}/${report.year.toString().substring(2)}';
                    return Text(formatted, style: const TextStyle(fontSize: 10));
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
        ),
      ),
    );
  }

  /// Generate bar chart groups based on data
  List<BarChartGroupData> _buildBarGroups() {
    return List.generate(monthlyReports.length, (i) {
      final report = monthlyReports[i];
      final isZero = report.grossProfit == 0;

      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: report.grossProfit.toDouble(),
            color: isZero ? Colors.grey[400] : primaryColor,
            borderRadius: BorderRadius.circular(4),
            width: 16,
          ),
        ],
      );
    });
  }

  /// Format currency for Y axis
  String _formatCurrency(double value) {
    if (value >= 1000000) {
      return 'Rp${(value / 1000000).toStringAsFixed(1)}M';
    } else if (value >= 1000) {
      return 'Rp${(value / 1000).toStringAsFixed(0)}k';
    } else {
      return 'Rp${value.toStringAsFixed(0)}';
    }
  }

  double _getMaxY() {
    if (monthlyReports.isEmpty) return 1000000;

    final maxValue = monthlyReports
        .map((e) => e.grossProfit.toDouble())
        .reduce((a, b) => a > b ? a : b);

    return ((maxValue / 100000).ceil()) * 100000;
  }

  double _calculateInterval() {
    if (monthlyReports.isEmpty) return 100000;

    final max = monthlyReports
        .map((e) => e.grossProfit.toDouble())
        .reduce((a, b) => a > b ? a : b);

    final rawInterval = max / 5;
    return (rawInterval / 100000).ceil() * 100000;
  }
}
