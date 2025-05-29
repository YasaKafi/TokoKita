import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:toko_kita/features/reports/widgets/helper_converter.dart';
import '../../utils/theme.dart';
import '../stock/bloc/stock_bloc.dart';
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

    context.read<StockBloc>().add(const StockEvent.getAll());
    bloc.add(const ReportEvent.getDailyReports(days: 7));
  }

  String selectedFilter = 'Weekly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
        child: BlocBuilder<ReportBloc, ReportState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (message) => Center(
                    child: Text(message, style: txtSecondarySubTitle),
                  ),
              success: (_, reports) {


                final totalSales = reports.fold(
                  0,
                  (sum, r) => sum + r.totalSales,
                );
                final totalHPP = reports.fold(
                  0,
                  (sum, r) => sum + r.totalHPP,
                );
                final profit = totalSales - totalHPP;

                return ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    const SizedBox(height: 16),
                    const Center(
                      child: Text("Reports", style: txtSecondaryHeader),
                    ),
                    const SizedBox(height: 16),
                    FilterDropdown(
                      selected: selectedFilter,
                      onChanged: (value) {
                        if (value == null) return;

                        setState(() {
                          selectedFilter = value;
                        });

                        final bloc = context.read<ReportBloc>();

                        switch (value) {
                          case 'Weekly':
                            bloc.add(
                              const ReportEvent.getDailyReports(days: 7),
                            );
                            break;
                          case '3 Month':
                            bloc.add(
                              const ReportEvent.getDailyReports(days: 90),
                            );
                            break;
                          case '6 Month':
                            bloc.add(
                              const ReportEvent.getDailyReports(days: 180),
                            );
                            break;
                          case '1 Year':
                            bloc.add(
                              const ReportEvent.getDailyReports(days: 365),
                            );
                            break;
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: SummaryCard(
                            title: 'Total Sales',
                            value: NumberFormat.currency(
                              locale: 'id',
                              symbol: 'Rp',
                              decimalDigits: 0,
                            ).format(totalSales),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: SummaryCard(
                            title: 'Total Purchases',
                            value: NumberFormat.currency(
                              locale: 'id',
                              symbol: 'Rp',
                              decimalDigits: 0,
                            ).format(totalHPP),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SummaryCard(
                      title: 'Gross Profit',
                      value: NumberFormat.currency(
                        locale: 'id',
                        symbol: 'Rp',
                        decimalDigits: 0,
                      ).format(profit),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Profit',
                      style: txtSecondaryTitle,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp',
                            decimalDigits: 0,
                          ).format(totalSales),
                          style: txtPrimaryTitle,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Last $selectedFilter ',
                          style: txtSecondarySubTitle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<ReportBloc, ReportState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          success: (p, reports) {
                            for (final report in reports) {
                              print(
                                '🗓️ ${report.date.minute}/${report.date.hour}/${report.date.day} → Gross Profit: ${report.grossProfit}',
                              );
                            }

                            final barData = convertToBarGroups(
                              dailyReports: reports,
                              range: selectedFilter,
                            );

                            return BarChartReport(barData: barData);
                          },
                          orElse:
                              () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    const Text('Top 5 Stock Items', style: txtSecondaryTitle),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: BlocBuilder<StockBloc, StockState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            success: (products, selected, currentStock) {
                              final topStocks =
                                  products
                                      .where(
                                        (product) =>
                                            currentStock?[product.id] != null,
                                      )
                                      .toList()
                                    ..sort(
                                      (a, b) => (currentStock?[b.id] ?? 0)
                                          .compareTo(
                                            currentStock?[a.id] ?? 0,
                                          ),
                                    );

                              final top5 = topStocks.take(5).toList();

                              final List<Map<String, dynamic>> dataProduct =
                                  [];

                              for (final product in top5) {
                                final stockQty =
                                    currentStock?[product.id] ?? 0;
                                if (stockQty > 0) {
                                  dataProduct.add({
                                    'name': product.name,
                                    'qty': stockQty,
                                  });
                                }
                              }

                              return TopStockTable(items: dataProduct);
                            },
                          );
                        },
                      ),
                    ),
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

class FilterDropdown extends StatelessWidget {
  final String selected;
  final Function(String?) onChanged;

  const FilterDropdown({
    super.key,
    required this.selected,
    required this.onChanged,
  });

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
            DropdownMenuItem(value: '3 Month', child: Text('3 Month')),
            DropdownMenuItem(value: '6 Month', child: Text('6 Month')),
            DropdownMenuItem(value: '1 Year', child: Text('1 Year')),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
