import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../data/models/product/product_model.dart';
import '../../utils/theme.dart';
import '../../widgets/common_button.dart';
import '../../widgets/textfield_auth_custom.dart';
import '../../widgets/textfield_date.dart';
import '../stock/bloc/stock_bloc.dart';


class AddEditStockPage extends StatefulWidget {
  final ProductModel? product;

  const AddEditStockPage({super.key, this.product});

  @override
  State<AddEditStockPage> createState() => _AddEditStockPageState();
}

class _AddEditStockPageState extends State<AddEditStockPage> {
  late final TextEditingController itemNameController;
  late final TextEditingController priceController;
  late final TextEditingController quantityController;
  late final TextEditingController dateController;

  String selectedUnit = 'Pcs';
  bool get isEdit => widget.product != null;

  @override
  void initState() {
    super.initState();
    final product = widget.product;
    itemNameController = TextEditingController(text: product?.name ?? '');
    priceController = TextEditingController(
        text: product != null ? product.sellingPrice.toString() : '');
    dateController = TextEditingController(
        text: product != null
            ? DateFormat('dd/MM/yyyy').format(product.entryDate)
            : '');
    selectedUnit = product?.unit ?? 'Pcs';
  }

  @override
  void dispose() {
    itemNameController.dispose();
    priceController.dispose();
    quantityController.dispose();
    dateController.dispose();
    super.dispose();
  }

  void _submit() {
    final name = itemNameController.text.trim();
    final price = int.tryParse(priceController.text.trim()) ?? 0;
    final qty = int.tryParse(quantityController.text.trim()) ?? 0;
    final date = DateFormat('dd/MM/yyyy').parse(dateController.text.trim());

    if (name.isEmpty ||
        price <= 0 ||
        quantityController.text.isEmpty ||
        dateController.text.isEmpty ||
        selectedUnit.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill all required fields")),
      );
      return;
    }

    final product = ProductModel(
      id: widget.product?.id,
      name: name,
      unit: selectedUnit,
      sellingPrice: price,
      entryDate: date,
    );

    if (isEdit && product.id != null) {
      context
          .read<StockBloc>()
          .add(StockEvent.update(product.id!, product));
    } else {
      context.read<StockBloc>().add(StockEvent.add(product));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      appBar: AppBar(
        backgroundColor: baseColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: blackColor),
          onPressed: () => context.pop(context),
        ),
        title: Text(
          isEdit ? 'Edit Product' : 'Add Stock',
          style: txtSecondaryTitle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextFieldGeneral(
                title: "Item Name",
                controller: itemNameController,
              ),
              const SizedBox(height: 12),
              _UnitDropdown(
                selected: selectedUnit,
                onChanged: (val) {
                  setState(() => selectedUnit = val);
                },
              ),
              const SizedBox(height: 12),
              CustomTextFieldGeneral(
                title: "Selling Price",
                controller: priceController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              CustomTextFieldGeneral(
                title: "Quantity",
                controller: quantityController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              EntryDateTextField(controller: dateController),
              const Spacer(),
              BlocConsumer<StockBloc, StockState>(
                listener: (context, state) {
                  state.maybeWhen(
                    success: (products, selected, _) {
                      context.pop(context);
                      context.read<StockBloc>().add(const StockEvent.getAll());
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              isEdit ? "Product updated" : "Stock added"),
                        ),
                      );
                    },
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message)),
                      );
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return CommonButton(
                        text: isEdit ? 'Update Product' : 'Add Stock',
                        onPressed: _submit,
                        borderRadius: 10,
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        fontSize: 18,
                      );
                    },
                    loading: () {
                      return CommonButton(
                        text: isEdit ? 'Updating...' : 'Adding...',
                        onPressed: () {},
                        borderRadius: 10,
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        fontSize: 18,
                        widget: LoadingAnimationWidget.staggeredDotsWave(
                          color: baseColor,
                          size: 40,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UnitDropdown extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onChanged;

  const _UnitDropdown({required this.selected, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selected,
      decoration: InputDecoration(
        filled: true,
        fillColor: baseColor50,
        hintText: 'Unit',
        hintStyle: txtSecondaryTitle.copyWith(
          fontWeight: FontWeight.w400,
          color: grey,
        ),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
      items: const [
        DropdownMenuItem(value: 'Pcs', child: Text('Pcs')),
        DropdownMenuItem(value: 'Kg', child: Text('Kg')),
        DropdownMenuItem(value: 'Liter', child: Text('Liter')),
      ],
      onChanged: (value) {
        if (value != null) onChanged(value);
      },
    );
  }
}

