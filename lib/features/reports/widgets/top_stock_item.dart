import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class TopStockItem extends StatelessWidget {
  final String image;
  final String name;
  final int quantity;

  const TopStockItem({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image, width: 48, height: 48, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: txtSecondaryTitle),
              const SizedBox(height: 4),
              Text('Quantity: $quantity', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
            ],
          ),
        ],
      ),
    );
  }
}
