import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../data/models/product/product_model.dart';
import '../features/stock/bloc/stock_bloc.dart';
import '../utils/theme.dart';

import 'package:dropdown_search/dropdown_search.dart';

class ProductDropdown extends StatefulWidget {
  final Function(String productId, String productName, String unit) onSelected;
  final bool isFromPurchase;

  const ProductDropdown({
    super.key,
    required this.onSelected,
    required this.isFromPurchase,
  });

  @override
  State<ProductDropdown> createState() => _ProductDropdownState();
}

class _ProductDropdownState extends State<ProductDropdown> {
  ProductModel? selectedProduct;
  String? selectedProductId;

  @override
  void initState() {
    super.initState();
    context.read<StockBloc>().add(const StockEvent.getAll());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isFromPurchase) {
      return _buildPurchaseDropdown();
    } else {
      return _buildStockDropdown();
    }
  }

  Widget _buildPurchaseDropdown() {
    return BlocBuilder<StockBloc, StockState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (products, _, __) {
            return DropdownSearch<ProductModel>(
              selectedItem:
                  (selectedProduct != null &&
                          selectedProduct!.id != '__add_new__')
                      ? selectedProduct
                      : null,

              dropdownBuilder: (context, item) {
                if (item == null) return const SizedBox.shrink();
                return Text(
                  item.name,
                  style: txtSecondaryTitle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                );
              },
              compareFn: (a, b) => a.id == b.id,
              items: (String filter, LoadProps? props) async {
                final state = context.read<StockBloc>().state;
                return state.maybeWhen(
                  success: (products, _, __) {
                    return [
                      ...products.where(
                        (p) =>
                            p.name.toLowerCase().contains(filter.toLowerCase()),
                      ),
                      ProductModel(
                        id: '__add_new__',
                        name: 'Add New Product',
                        unit: '',
                        entryDate: DateTime.now(),
                      ),
                    ];
                  },
                  orElse: () => [],
                );
              },
              itemAsString: (item) => item.name,
              onChanged: (value) {
                if (value == null) return;


                if (value.id == '__add_new__') {

                  setState(() {
                    selectedProduct = null;
                    selectedProductId = null;
                  });

                  context.pushNamed(
                    'add-edit-stock',
                    extra: {'isFromPurchase': widget.isFromPurchase},
                  );

                } else {
                  setState(() => selectedProduct = value);

                  widget.onSelected(value.id!, value.name, value.unit);
                }
              },

              popupProps: PopupProps.menu(
                showSearchBox: true,
                menuProps: MenuProps(
                  backgroundColor: baseColor50,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: grey, width: 1),
                  ),
                ),
                constraints: BoxConstraints(maxHeight: 200),
                searchFieldProps: TextFieldProps(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 22,
                    ),
                    hintText: 'Search product...',
                    hintStyle: txtSecondaryTitle.copyWith(
                      fontWeight: FontWeight.w400,
                      color: grey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
                itemBuilder:
                    (context, item, isSelected, isFocused) => ListTile(
                      title: Text(
                        item.name,
                        style: txtSecondaryTitle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: blackColor,
                        ),
                      ),
                      trailing:
                          item.id == '__add_new__'
                              ? const Icon(Icons.add, color: primaryColor)
                              : null,
                    ),
              ),
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  iconColor: primaryColor,
                  filled: true,
                  fillColor: baseColor50,
                  hintText: 'Select product...',
                  hintStyle: txtSecondaryTitle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: grey,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: primaryColor, width: 1),
                  ),
                ),
              ),
            );
          },
          orElse:
              () => DropdownButtonFormField<String>(
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

  Widget _buildStockDropdown() {
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
                  final selectedProduct = products.firstWhere(
                    (p) => p.id == value,
                  );
                  widget.onSelected(
                    selectedProduct.id!,
                    selectedProduct.name,
                    selectedProduct.unit,
                  );
                });
              },
            );
          },
          orElse:
              () => DropdownButtonFormField<String>(
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
