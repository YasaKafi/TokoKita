import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../utils/theme.dart';

class EntryDateTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;

  const EntryDateTextField({super.key, required this.controller, this.hintText});

  @override
  State<EntryDateTextField> createState() => _EntryDateTextFieldState();
}

class _EntryDateTextFieldState extends State<EntryDateTextField> {
  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColor,
              onPrimary: Colors.white,
              onSurface: blackColor,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      final formattedDate = DateFormat('dd/MM/yyyy').format(picked);
      widget.controller.text = formattedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: widget.controller,
      style: txtSecondaryTitle.copyWith(
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Entry Date',
        hintStyle: txtSecondaryTitle.copyWith(
          fontWeight: FontWeight.w400,
          color: grey,
        ),
        filled: true,
        fillColor: baseColor50,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        suffixIcon: const Icon(Icons.calendar_today, color: blackColor40),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: primaryColor, width: 1),
        ),
      ),
      onTap: () => _selectDate(context),
    );
  }
}
