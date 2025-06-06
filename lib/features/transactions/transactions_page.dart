import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toko_kita/utils/constant.dart';
import '../../utils/theme.dart';
import 'widgets/transaction_card.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            const SizedBox(height: 16),
            const Center(child: Text("Transactions", style: txtSecondaryHeader)),
            const SizedBox(height: 16),
            TransactionCard(
              imageAsset: ilustrationCashierMachine,
              title: 'Record Sale',
              subtitle: 'Log a new sale transaction.',
              buttonLabel: 'Record Sale',
              onButtonPressed: () {
                context.pushReplacementNamed('record-sale');
              },
            ),
            const SizedBox(height: 16),
            TransactionCard(
              imageAsset: ilustrationShoppingCart,
              title: 'Record Purchase',
              subtitle: 'Log a new purchase transaction.',
              buttonLabel: 'Record Purchase',
              onButtonPressed: () {
                context.pushReplacementNamed('record-purchase');
              },
            ),
            const SizedBox(height: 16),
             TransactionCard(
              imageAsset: ilustrationTransactionReceipt,
              title: 'View Transaction History',
              subtitle: 'Review past transactions.',
              buttonLabel: 'View History',
               onButtonPressed: () {
                 context.pushNamed('transaction-history');
               },
            ),
            const SizedBox(height: 32),

          ],
        ),
      ),
    );
  }
}
