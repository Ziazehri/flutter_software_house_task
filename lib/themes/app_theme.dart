// lib/theme_data.dart
import 'package:flutter/material.dart';

class AppColors {
  static const primaryA = Color(0xFF4613D2);
  static const primaryB = Color(0xFFF5ABBC);
  static const primaryC = Color(0xFFFBBF24);

  static const secondaryA = Color(0xFFC0EABD);
  static const secondaryB = Color(0xFFF87171);
  static const secondaryC = Color(0xFFCCCCCC);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    
    primaryColor: AppColors.primaryA,

    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
}
