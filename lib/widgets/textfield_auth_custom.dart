import 'package:flutter/material.dart';

import '../utils/theme.dart';


class CustomTextFieldGeneral extends StatelessWidget {
  final String title;
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  const CustomTextFieldGeneral({super.key, required this.title, this.controller, this.maxLength, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    // Create a ValueNotifier to manage the obscureText state
    final ValueNotifier<bool> _obscureTextNotifier = ValueNotifier<bool>(
      title == "Enter your password" || title == "Enter your confirm password" || title == 'Enter your new password',
    );

    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextNotifier,
      builder: (context, _obscureText, child) {
        return TextField(
          maxLength: maxLength,
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          style: txtSecondaryTitle.copyWith(fontWeight: FontWeight.w600, color: blackColor),
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: title,
            hintStyle: txtSecondaryTitle.copyWith(fontWeight: FontWeight.w400, color: grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 1, color: primaryColor, style: BorderStyle.solid),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 2, color: grey, style: BorderStyle.solid),
            ),
            suffixIcon: (title == "Enter your password" || title == "Enter your confirm password" || title == 'Enter your new password')
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      _obscureTextNotifier.value = !_obscureTextNotifier.value;
                    },
                  )
                : null,
          ),
        );
      },
    );
  }
}
