import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class TransactionItem extends StatelessWidget {
  final String date;
  final String total;
  final String name;
  final String unitPrice;
  final int quantity;

  const TransactionItem({
    super.key,
    required this.date,
    required this.total,
    required this.name,
    required this.unitPrice,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date: $date', style: txtPrimarySubTitle.copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text('Total: $total', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
                Text('Name : $name', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
                Text('Unit Price : $unitPrice', style: txtSecondarySubTitle.copyWith(color: secondaryColor)),
              ],
            ),
          ),
          Text('Quantity: $quantity', style: txtPrimarySubTitle),
        ],
      ),
    );
  }
}
