import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toko_kita/features/stock/bloc/stock_bloc.dart';
import '../../utils/theme.dart';
import '../../widgets/alert_dialog.dart';
import 'widgets/product_item.dart';

class StockPage extends StatefulWidget {
  const StockPage({super.key});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  void initState() {
    super.initState();

    final state = context.read<StockBloc>().state;
    state.mapOrNull(success: (_) => null) ?? context.read<StockBloc>().add(StockEvent.getAll());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      appBar: AppBar(
        backgroundColor: baseColor,
        elevation: 0,
        centerTitle: true,
        title: const Text('Stock', style: txtPrimaryTitle),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search, color: blackColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocBuilder<StockBloc, StockState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('No data available')),
              loading:
                  () => Center(
                    child: CircularProgressIndicator(color: primaryColor),
                  ),
              success: (products, selected, currentStock)  {
                print('Current Stock: $currentStock');
                return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];

                    return ProductItem(
                      name: product.name,
                      stock: currentStock?[product.id] ?? 0,
                      unit: product.unit,
                      onPressedUpdate: () => context.pushNamed(
                        'add-edit-stock',
                        extra: {
                          'product': product,
                        },
                      ),
                      onPressedDelete: () => onShowAlertDialog(
                        context,
                        title: "Delete Item",
                        desc: "Are you sure you want to delete this item?",
                        textBtn1: "Cancel",
                        textBtn2: "Delete",
                        bgColorBtn1: Colors.grey,
                        bgColorBtn2: redMedium,
                        titleStyle: txtSecondaryTitle.copyWith(color: blackColor),
                        descStyle: txtSecondarySubTitle.copyWith(color: blackColor),
                        onPressed: () {
                          context.read<StockBloc>().add(
                            StockEvent.delete(product.id!),
                          );
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                );
              },
              error:
                  (message) => Center(
                    child: Text(
                      'Error: $message',
                      style: txtSecondarySubTitle.copyWith(color: Colors.red),
                    ),
                  ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: primaryColor,
        icon: const Icon(Icons.add, color: baseColor),
        label: Text(
          'Add Item',
          style: txtSecondaryTitle.copyWith(color: baseColor),
        ),
        onPressed: () => context.pushNamed('add-edit-stock'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
