import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:toko_kita/widgets/product_dropdown.dart';

import '../../data/models/sale/sale_model.dart';
import '../../utils/theme.dart';
import '../../widgets/common_button.dart';
import '../../widgets/textfield_auth_custom.dart';
import '../../widgets/textfield_date.dart';
import '../stock/bloc/stock_bloc.dart';
import 'bloc/sale_bloc.dart';


class RecordSalePage extends StatefulWidget {
  const RecordSalePage({super.key});

  @override
  State<RecordSalePage> createState() => _RecordSalePageState();
}

class _RecordSalePageState extends State<RecordSalePage> {
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  String? selectedProductId;
  String? selectedProductName;
  String? selectedUnit;

  @override
  void initState() {
    super.initState();
    dateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
  }

  @override
  void dispose() {
    priceController.dispose();
    quantityController.dispose();
    dateController.dispose();
    super.dispose();
  }

  bool get _isFormValid {
    return selectedProductId != null &&
        int.tryParse(priceController.text.trim()) != null &&
        int.tryParse(quantityController.text.trim()) != null &&
        dateController.text.trim().isNotEmpty;
  }

  void _submit() {
    if (!_isFormValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields correctly')),
      );
      return;
    }

    final sellingPrice = int.parse(priceController.text.trim());
    final quantity = int.parse(quantityController.text.trim());
    final dateInput = DateFormat('dd/MM/yyyy').parse(dateController.text.trim());
    final now = DateTime.now();
    final fullDate = DateTime(dateInput.year, dateInput.month, dateInput.day, now.hour, now.minute, now.second);

// NOTE: HPP = 0 untuk saat ini — logic FIFO akan kamu tambahkan nanti
    final sale = SaleModel(
      productId: selectedProductId!,
      productName: selectedProductName!,
      quantity: quantity,
      sellingPrice: sellingPrice,
      hpp: 0, // TODO: hitung FIFO HPP nanti
      saleDate: fullDate,
      id: null,
    );

    context.read<SaleBloc>().add(SaleEvent.addSale(sale));
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
          onPressed: () => context.pushReplacementNamed(
            'navbar',
            pathParameters: {'pageIndex': '2'},
          ),
        ),
        title: const Text('Record Sale', style: txtSecondaryTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ProductDropdown(
                onSelected: (productId, name, unit) {
                  setState(() {
                    selectedProductId = productId;
                    selectedProductName = name;
                    selectedUnit = unit;
                  });
                },
              ),
              if (selectedUnit != null)
                _UnitDropdown(selected: selectedUnit!),
              const SizedBox(height: 12),
              CustomTextFieldGeneral(
                title: "Unit Sell Price",
                controller: priceController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              CustomTextFieldGeneral(
                title: "Quantity Sold",
                controller: quantityController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 12),
              EntryDateTextField(controller: dateController, hintText: 'Date'),
              const Spacer(),
              Text("Uses FIFO logic for reducing stock",
                  style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
              const SizedBox(height: 12),

              BlocConsumer<SaleBloc, SaleState>(
                listener: (context, state) {
                  state.maybeWhen(
                    error: (msg) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(msg ?? 'Something went wrong')),
                      );
                    },
                    success: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Sale recorded successfully')),
                      );
                      context.goNamed('navbar', pathParameters: {'pageIndex': '1'});
                      context.read<StockBloc>().add(const StockEvent.getAll());
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => CommonButton(
                      text: 'Submitting...',
                      onPressed: () {},
                      widget: CircularProgressIndicator(color: baseColor),
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                    ),
                    orElse: () => CommonButton(
                      text: 'Submit',
                      onPressed: _submit,
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                    ),
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

  const _UnitDropdown({required this.selected});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: DropdownButtonFormField<String>(
        value: selected,
        decoration: InputDecoration(
          filled: true,
          fillColor: baseColor50,
          hintText: 'Unit',
          hintStyle: txtSecondaryTitle.copyWith(
            fontWeight: FontWeight.w400,
            color: grey,
          ),
          enabled: selected == '',
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: grey, width: 1),
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
        icon: Icon(Icons.keyboard_arrow_down, color: selected != '' ? grey : blackColor,),
        style: txtSecondaryTitle.copyWith(
          fontWeight: FontWeight.w600,
          color: selected != '' ? grey : blackColor,
        ),
        items: [
          DropdownMenuItem(value: selected, child: Text(selected)),
        ],
        onChanged: (_) {},
      ),
    );
  }
}