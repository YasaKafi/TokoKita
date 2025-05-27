import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../utils/theme.dart';

class SalesChart extends StatelessWidget {
  const SalesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: BarChart(
        BarChartData(
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const titles = ['8AM', '10AM', '12PM', '2PM', '4PM', '6PM'];
                  return Text(titles[value.toInt()], style: const TextStyle(fontSize: 10));
                },
                reservedSize: 32,
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          barGroups: List.generate(6, (index) {
            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  toY: 8,
                  width: 16,
                  borderRadius: BorderRadius.circular(4),
                  color: lightGrey,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
