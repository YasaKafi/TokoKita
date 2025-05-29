import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

import '../../../data/models/report/bar_group_model.dart';
import '../../../utils/theme.dart';

class BarChartReport extends StatelessWidget {
  final List<BarGroupModel> barData;

  const BarChartReport({super.key, required this.barData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(

        BarChartData(
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipColor: (_) => primaryColor,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                final item = barData[group.x];
                final fullValue = NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0)
                    .format(item.grossProfit);

                return BarTooltipItem(
                  '${item.label}\n',
                  const TextStyle(color: Colors.white, fontSize: 12),
                  children: [
                    TextSpan(
                      text: fullValue,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },

            ),
          ),
          backgroundColor: lightGrey,
          maxY: _getMaxY(),
          barGroups: _buildBarGroups(),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: grey, width: 1),
          ),
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
                  if (index >= 0 && index < barData.length) {
                    return Text(barData[index].label, style: const TextStyle(fontSize: 10));
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

  List<BarChartGroupData> _buildBarGroups() {
    return List.generate(barData.length, (i) {
      final item = barData[i];
      final isZero = item.grossProfit == 0;

      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: item.grossProfit.toDouble(),
            color: isZero ? Colors.grey[400] : primaryColor,
            borderRadius: BorderRadius.circular(4),
            width: 16,
          ),
        ],
      );
    });
  }

  String _formatCurrency(double value) {
    if (value >= 1000000) {
      return 'Rp${(value / 1000000).toStringAsFixed(3)}M';
    } else if (value >= 1000) {
      return 'Rp${(value / 1000).toStringAsFixed(0)}k';
    } else {
      return 'Rp${value.toStringAsFixed(0)}';
    }
  }

  double _getMaxY() {
    if (barData.isEmpty) return 1000000;

    final maxValue = barData
        .map((e) => e.grossProfit.toDouble())
        .reduce((a, b) => a > b ? a : b);

    return ((maxValue / 100000).ceil()) * 100000;
  }

  double _calculateInterval() {
    if (barData.isEmpty) return 100000;

    final max = barData
        .map((e) => e.grossProfit.toDouble())
        .reduce((a, b) => a > b ? a : b);

    final rawInterval = max / 5;
    return (rawInterval / 100000).ceil() * 100000;
  }
}
