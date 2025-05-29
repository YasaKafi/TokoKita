import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:toko_kita/features/reports/bloc/report_bloc.dart';
import 'package:toko_kita/utils/constant.dart';
import '../../utils/theme.dart';
import 'widgets/summary_card.dart';
import 'widgets/action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<ReportBloc>().add(ReportEvent.getDailyReports(days: 7));
  }

  @override
  Widget build(BuildContext context) {
    final today = DateFormat('d MMM').format(DateTime.now());

    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(logoTokoKita, width: 40),
                      const SizedBox(width: 8),
                      Text(
                        'Toko Kita',
                        style: txtSecondaryHeader.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Text('Today, $today', style: txtSecondaryTitle),
                ],
              ),
              const SizedBox(height: 24),
              const Text("Yesterday's Summary", style: txtSecondaryHeader),
              const SizedBox(height: 16),
              BlocBuilder<ReportBloc, ReportState>(
                builder: (context, state) {
                  return state.when(
                    initial:
                        () => const Center(child: Text('No data available')),
                    loading: () {
                      return Row(
                        children: [
                          Expanded(
                            child: SummaryCard(
                              title: 'Total Sales',
                              value: 'Loading...',
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: SummaryCard(
                              title: 'Total Purchases',
                              value: 'Loading...',
                            ),
                          ),
                        ],
                      );
                    },
                    success: (_, reports) {
                      bool isWithinYesterday(DateTime date) {
                        final now = DateTime.now();
                        final sevenDaysAgo = now.subtract(
                          const Duration(days: 1),
                        );
                        final startOfDay = DateTime(
                          sevenDaysAgo.year,
                          sevenDaysAgo.month,
                          sevenDaysAgo.day,
                        );
                        final endOfDay = DateTime(
                          now.year,
                          now.month,
                          now.day,
                          23,
                          59,
                          59,
                        );

                        return date.isAfter(
                              startOfDay.subtract(const Duration(seconds: 1)),
                            ) &&
                            date.isBefore(
                              endOfDay.add(const Duration(seconds: 1)),
                            );
                      }

                      final recentReports =
                          reports
                              .where((r) => isWithinYesterday(r.date))
                              .toList();

                      final totalSales = recentReports.fold(
                        0,
                        (sum, r) => sum + r.totalSales,
                      );
                      final totalHPP = recentReports.fold(
                        0,
                        (sum, r) => sum + r.totalHPP,
                      );
                      return Row(
                        children: [
                          Expanded(
                            child: SummaryCard(
                              title: 'Total Sales',
                              value: formatCurrency(totalSales),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: SummaryCard(
                              title: 'Total Purchases',
                              value: formatCurrency(totalHPP),
                            ),
                          ),
                        ],
                      );
                    },
                    error:
                        (message) => Center(
                          child: Text(message, style: txtSecondarySubTitle),
                        ),
                  );
                },
              ),
              const SizedBox(height: 12),
              BlocBuilder<ReportBloc, ReportState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () => const SummaryCard(title: 'Gross Profit', value:'Loading...',
                    ),
                    success: (_, reports) {
                      bool isWithinYesterday(DateTime date) {
                        final now = DateTime.now();
                        final sevenDaysAgo = now.subtract(
                          const Duration(days: 1),
                        );
                        final startOfDay = DateTime(
                          sevenDaysAgo.year,
                          sevenDaysAgo.month,
                          sevenDaysAgo.day,
                        );
                        final endOfDay = DateTime(
                          now.year,
                          now.month,
                          now.day,
                          23,
                          59,
                          59,
                        );

                        return date.isAfter(
                          startOfDay.subtract(const Duration(seconds: 1)),
                        ) &&
                            date.isBefore(
                              endOfDay.add(const Duration(seconds: 1)),
                            );
                      }

                      final recentReports =
                      reports
                          .where((r) => isWithinYesterday(r.date))
                          .toList();

                      final grossProfit = recentReports.fold(
                        0,
                        (sum, r) => sum + r.grossProfit,
                      );
                      return SummaryCard(title: 'Gross Profit', value: formatCurrency(grossProfit));
                    },
                    error: (message) => Center(
                      child: Text(message, style: txtSecondarySubTitle),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  ActionButton(
                    icon: Icons.add,
                    label: 'Add Stock',
                    onPressed: () => context.pushNamed('add-edit-stock'),
                  ),
                  ActionButton(
                    icon: Icons.shopping_cart_outlined,
                    label: 'Record Sale',
                    onPressed: () => context.pushNamed('record-sale'),
                  ),
                  ActionButton(
                    icon: Icons.receipt_long_outlined,
                    label: 'Record Purchase',
                    onPressed: () => context.pushNamed('record-purchase'),
                  ),
                  ActionButton(
                    icon: Icons.history,
                    label: 'Transaction History',
                    onPressed: () => context.pushNamed('transaction-history'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String formatCurrency(num amount) {
    final format = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    );
    return format.format(amount);
  }
}
