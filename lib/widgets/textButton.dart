import 'package:flutter/material.dart';
import '../core/themes/app_color.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TextButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.electricCyan,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    );
  }
}
