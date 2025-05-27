import 'package:flutter/material.dart';
import 'package:toko_kita/utils/constant.dart';
import '../../utils/theme.dart';
import 'widgets/summary_card.dart';
import 'widgets/action_button.dart';
import 'widgets/sales_chart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Text('Toko Kita', style: txtSecondaryHeader.copyWith( fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Text('Today, 22 May', style: txtSecondaryTitle),
                ],
              ),
              const SizedBox(height: 24),
              const Text("Today's Summary", style: txtSecondaryHeader),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(child: SummaryCard(title: 'Total Sales', value: 'Dummy')),
                  SizedBox(width: 12),
                  Expanded(child: SummaryCard(title: 'Total Purchases', value: 'Dummy')),
                ],
              ),
              const SizedBox(height: 12),
              const SummaryCard(title: 'Gross Profit', value: 'Dummy'),
              const SizedBox(height: 24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: const [
                  ActionButton(icon: Icons.add, label: 'Add Stock'),
                  ActionButton(icon: Icons.shopping_cart_outlined, label: 'Record Sale'),
                  ActionButton(icon: Icons.receipt_long_outlined, label: 'Record Purchase'),
                  ActionButton(icon: Icons.history, label: 'Transaction History'),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
