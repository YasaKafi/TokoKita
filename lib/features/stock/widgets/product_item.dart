import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final int stock;
  final String unit;
  final int price;
  final VoidCallback? onPressedUpdate;
  final VoidCallback? onPressedDelete;


  const ProductItem({
    super.key,
    required this.name,
    required this.stock,
    required this.unit,
    required this.price,
    this.onPressedUpdate,
    this.onPressedDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: txtSecondaryTitle.copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text('Current Stock: $stock', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
                Text('Unit: $unit', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
                Text('Price: $price', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
              ],
            ),
          ),
          IconButton(
            onPressed: onPressedDelete,
            icon: const Icon(Icons.delete_forever_outlined, size: 20, color: redMedium,),
          ),
          SizedBox(width: 2,),
          IconButton(
            onPressed: onPressedUpdate,
            icon: const Icon(Icons.edit, size: 20),
          ),
        ],
      ),
    );
  }
}
