import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String value;

  const SummaryCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: baseColor50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: txtPrimarySubTitle),
          const SizedBox(height: 8),
          Text(value, style: txtPrimaryTitle.copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
