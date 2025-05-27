import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../utils/constant.dart';
import '../../utils/theme.dart';
import 'bloc/report_bloc.dart';
import 'widgets/summary_card.dart';
import 'widgets/bar_chart_report.dart';
import 'widgets/top_stock_item.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<ReportBloc>();

    bloc.add(const ReportEvent.getMonthlyReport());
    bloc.add(const ReportEvent.getDailyReports(days: 2)); // default (weekly)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
        child: BlocBuilder<ReportBloc, ReportState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message, style: txtSecondarySubTitle)),
              success: (reports, _) {
                final topItems = [
                  {'name': 'Product A', 'qty': 100, 'image': imgEssectialGroceries},
                  {'name': 'Product B', 'qty': 80, 'image': imgEssectialGroceries},
                  {'name': 'Product C', 'qty': 60, 'image': imgEssectialGroceries},
                  {'name': 'Product D', 'qty': 40, 'image': imgEssectialGroceries},
                  {'name': 'Product E', 'qty': 20, 'image': imgEssectialGroceries},
                ];

                final totalSales = reports.fold(0, (sum, r) => sum + r.totalSales);
                final totalHPP = reports.fold(0, (sum, r) => sum + r.totalHPP);
                final profit = totalSales - totalHPP;

                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    const SizedBox(height: 16),
                    const Center(child: Text("Reports", style: txtSecondaryHeader)),
                    const SizedBox(height: 16),
                    const _FilterDropdown(),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(child: SummaryCard(title: 'Total Sales', value: NumberFormat.currency(locale: 'id', symbol: 'Rp').format(totalSales))),
                        const SizedBox(width: 12),
                        Expanded(child: SummaryCard(title: 'Total Purchases', value: NumberFormat.currency(locale: 'id', symbol: 'Rp').format(totalHPP))),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SummaryCard(title: 'Gross Profit', value: NumberFormat.currency(locale: 'id', symbol: 'Rp').format(profit)),
                    const SizedBox(height: 24),
                    const Text('Sales, Purchases, and Profit', style: txtSecondaryTitle),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(NumberFormat.currency(locale: 'id', symbol: 'Rp').format(totalSales), style: txtPrimaryTitle),
                        const SizedBox(width: 12),
                        const Text('Last 6 Month ', style: txtSecondarySubTitle),
                      ],
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<ReportBloc, ReportState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          success: ( p ,reports) {
                            print('📊 Daily Report Count: ${p.length}');
                            for (final report in reports) {
                              // print('🗓️ ${report.month}/${report.year} → Gross Profit: ${report.grossProfit}');
                              print('🗓️ ${report.date.minute}/${report.date.hour}/${report.date.day} → Gross Profit: ${report.grossProfit}');
                            }

                            return BarChartReport(monthlyReports: p);
                          },
                          orElse: () => const Center(child: CircularProgressIndicator()),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    const Text('Top 5 Stock Items', style: txtSecondaryTitle),
                    const SizedBox(height: 16),
                    ...topItems.map((item) => TopStockItem(
                      image: item['image'].toString(),
                      name: item['name'].toString(),
                      quantity: int.parse(item['qty'].toString()),
                    )),
                    const SizedBox(height: 32),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _FilterDropdown extends StatefulWidget {
  const _FilterDropdown({super.key});

  @override
  State<_FilterDropdown> createState() => _FilterDropdownState();
}

class _FilterDropdownState extends State<_FilterDropdown> {
  String selected = 'Weekly';

  void _onFilterChanged(String? value) {
    if (value == null) return;

    setState(() {
      selected = value;
    });

    final bloc = context.read<ReportBloc>();

    switch (value) {
      case 'Weekly':
        bloc.add(const ReportEvent.getDailyReports(days: 7));
        break;
      case 'This 3 Month':
        bloc.add(const ReportEvent.getDailyReports(days: 90));
        break;
      case '6 Month':
        bloc.add(const ReportEvent.getDailyReports(days: 180));
        break;
      case '1 Year':
        bloc.add(const ReportEvent.getDailyReports(days: 365));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selected,
          icon: const Icon(Icons.keyboard_arrow_down),
          style: txtSecondarySubTitle.copyWith(color: blackColor),
          dropdownColor: baseColor,
          items: const [
            DropdownMenuItem(value: 'Weekly', child: Text('Weekly')),
            DropdownMenuItem(value: 'This 3 Month', child: Text('This 3 Month')),
            DropdownMenuItem(value: '6 Month', child: Text('6 Month')),
            DropdownMenuItem(value: '1 Year', child: Text('1 Year')),
          ],
          onChanged: null,
        ),
      ),
    );
  }
}