import 'package:flutter/material.dart';

class AppColors {
  // Primary
  static const Color midnightBlue = Color(0xFF101D42);
  static const Color electricCyan = Color(0xFF00D2FF);
  static const Color ultramarineBlue = Color(0xFF3A7BD5);

  // Neutral
  static const Color snowWhite = Color(0xFFFFFFFF);
  static const Color silverMist = Color(0xFFB0BEC5);
  static const Color charcoalGrey = Color(0xFF37474F);

  // Extra - Optional usage
  static const Color darkCardBackground = Color(0xFF1A237E);

  // Gradient
  static const Gradient triptellerGradient = LinearGradient(
    colors: [electricCyan, ultramarineBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
