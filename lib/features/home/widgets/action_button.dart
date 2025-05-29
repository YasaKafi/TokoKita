import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const ActionButton({super.key, required this.icon, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onPressed,
          icon: Icon(icon, color: blackColor, size: 24),
          label: Text(
            label,
            style: txtPrimarySubTitle.copyWith(color: blackColor, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
