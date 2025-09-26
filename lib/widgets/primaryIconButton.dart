import 'package:flutter/material.dart';
import 'package:roomshare/widgets/appText.dart';
import '../core/themes/app_color.dart';

class PrimaryIconButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool fullWidth;
  final String iconPath; // for image asset
  final double iconSize;

  const PrimaryIconButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.iconPath,
    this.fullWidth = true,
    this.iconSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : 50,
      child: ElevatedButton.icon(
        onPressed: onPressed,
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
        icon: Image.asset(
          iconPath,
          height: iconSize,
          width: iconSize,
        ),
        label: AppText(
          text,
          color: AppColors.midnightBlue,
          weight: FontWeight.bold,
        ),
      ),
    );
  }
}
