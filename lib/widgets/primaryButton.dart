import 'package:flutter/material.dart';
import 'package:roomshare/widgets/appText.dart';

import '../core/themes/app_color.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool fullWidth;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fullWidth = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: fullWidth ? double.infinity : 50,
        child: ElevatedButton(
            onPressed: (onPressed),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.electricCyan,
              foregroundColor: AppColors.midnightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: AppText(
              text,
              color: AppColors.midnightBlue,
              weight: FontWeight.bold,
            )));
  }
}
