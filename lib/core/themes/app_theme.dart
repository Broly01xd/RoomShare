import 'package:flutter/material.dart';
import 'package:roomshare/core/themes/app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.midnightBlue,
      primaryColor: AppColors.electricCyan,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: AppColors.electricCyan,
        secondary: AppColors.ultramarineBlue,
        background: AppColors.midnightBlue,
        surface: AppColors.darkCardBackground,
        onPrimary: AppColors.snowWhite,
        onBackground: AppColors.silverMist,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppColors.snowWhite,
        ),
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.snowWhite,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppColors.silverMist,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppColors.silverMist,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.midnightBlue,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.snowWhite),
        titleTextStyle: TextStyle(
          color: AppColors.snowWhite,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
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
      ),
    );
  }
}
