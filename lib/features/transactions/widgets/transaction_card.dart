import 'package:flutter/material.dart';
import '../../../utils/theme.dart';

class TransactionCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final String buttonLabel;
  final Function()? onButtonPressed;

  const TransactionCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.buttonLabel,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(imageAsset),
        ),
        const SizedBox(height: 8),
        Text(title, style: txtSecondaryTitle.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 4),
        Text(subtitle, style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: onButtonPressed ?? () {},
            child: Text(buttonLabel, style: txtPrimarySubTitle.copyWith(color: baseColor, fontWeight: FontWeight.w500)),
          ),
        ),
      ],
    );
  }
}
