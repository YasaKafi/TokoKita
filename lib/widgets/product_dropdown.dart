import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/stock/bloc/stock_bloc.dart';
import '../utils/theme.dart';

class ProductDropdown extends StatefulWidget {
  final Function(String productId, String productName,String unit) onSelected;

  const ProductDropdown({super.key, required this.onSelected});

  @override
  State<ProductDropdown> createState() => _ProductDropdownState();
}

class _ProductDropdownState extends State<ProductDropdown> {
  @override
  initState() {
    super.initState();

    context.read<StockBloc>().add(const StockEvent.getAll());
  }

  String? selectedProductId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StockBloc, StockState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (products, _, _) {
            return DropdownButtonFormField<String>(
              value: selectedProductId,
              decoration: InputDecoration(
                filled: true,
                fillColor: baseColor50,
                hintText: 'Select Product',
                hintStyle: txtSecondaryTitle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: primaryColor, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: grey, width: 1),
                ),
              ),
              icon: const Icon(Icons.keyboard_arrow_down),
              style: txtSecondaryTitle.copyWith(
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
              items:
              products.map((product) {
                return DropdownMenuItem<String>(
                  value: product.id as String,
                  child: Text(product.name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedProductId = value;
                  final selectedProduct = products.firstWhere((p) => p.id == value);
                  widget.onSelected(selectedProduct.id!, selectedProduct.name, selectedProduct.unit);
                });
              },
            );
          },
          orElse: () => DropdownButtonFormField<String>(
            value: null,
            decoration: InputDecoration(
              filled: true,
              fillColor: baseColor50,
              hintText: 'Loading...',
              hintStyle: txtSecondaryTitle.copyWith(
                fontWeight: FontWeight.w400,
                color: grey,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: primaryColor, width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: grey, width: 1),
              ),
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            style: txtSecondaryTitle.copyWith(
              fontWeight: FontWeight.w600,
              color: blackColor,
            ),
            items: [],
            onChanged: null,
          ),
        );
      },
    );
  }
}
