import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import '../../utils/theme.dart';
import '../stock/bloc/stock_bloc.dart';
import 'bloc/history_transaction_bloc.dart';
import 'widgets/transaction_item.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({super.key});

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _fetchInitialData();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      _fetchInitialData();
    });
  }

  void _fetchInitialData() {
    final bloc = context.read<HistoryTransactionBloc>();
    final state = bloc.state;

    if (_tabController.index == 0) {
      state.maybeWhen(
        success: (sales, _) {
          if (sales != []) {
            bloc.add(const HistoryTransactionEvent.loadSales());
          }
        },
        orElse: () => bloc.add(const HistoryTransactionEvent.loadSales()),
      );
    } else if (_tabController.index == 1) {
      state.maybeWhen(
        success: (_, purchases) {
          if (purchases != []) {
            bloc.add(const HistoryTransactionEvent.loadPurchases());
          }
        },
        orElse: () => bloc.add(const HistoryTransactionEvent.loadPurchases()),
      );
    }
  }

  String? getProductUnit(BuildContext context, String productId) {
    final stockState = context.read<StockBloc>().state;
    return stockState.maybeWhen(
      success: (products, _, __) {
        final product = products.firstWhereOrNull((p) => p.id == productId);
        return product?.unit;
      },
      orElse: () => null,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    print('Sabun : ${getProductUnit(context, '3HRDkDxOcJIdF9GqtZEW')}');
    
    return Scaffold(
      backgroundColor: baseColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: baseColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: blackColor),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text("Transaction History", style: txtSecondaryTitle),
        bottom: TabBar(
          controller: _tabController,
          labelColor: blackColor,
          unselectedLabelColor: secondaryColor,
          indicatorColor: primaryColor,
          labelStyle: txtSecondaryTitle.copyWith(fontWeight: FontWeight.w600),
          unselectedLabelStyle: txtSecondaryTitle,
          tabs: const [
            Tab(text: 'Sales'),
            Tab(text: 'Purchases'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BlocBuilder<HistoryTransactionBloc, HistoryTransactionState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (sales, _) => ListView.builder(
                  itemCount: sales!.length,
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    final data = sales[index];
                    return TransactionItem(
                      date: DateFormat('yyyy-MM-dd').format(data.saleDate),
                      total: NumberFormat.currency(locale: 'id', symbol: 'Rp').format(data.quantity * data.sellingPrice),                      name: data.productName,
                      unitPrice: 'Rp${data.sellingPrice}/${getProductUnit(context, data.productId) ?? 'unit'}',
                      quantity: data.quantity,
                    );
                  },
                ),
                error: (message) => Center(child: Text(message, style: txtSecondarySubTitle)),
              );
            },
          ),
          BlocBuilder<HistoryTransactionBloc, HistoryTransactionState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (_, purchases) => ListView.builder(
                  itemCount: purchases!.length,
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    final data = purchases[index];
                    return TransactionItem(
                      date: DateFormat('yyyy-MM-dd').format(data.purchaseDate),
                      total: NumberFormat.currency(locale: 'id', symbol: 'Rp').format(data.originalQuantity * data.purchasePrice),                      name: data.productName,
                      unitPrice: 'Rp${data.purchasePrice}/${getProductUnit(context, data.productId) ?? 'unit'}',
                      quantity: data.originalQuantity,
                    );
                  },
                ),
                error: (message) => Center(child: Text(message, style: txtSecondarySubTitle)),
              );
            },
          ),
        ],
      ),
    );
  }
}