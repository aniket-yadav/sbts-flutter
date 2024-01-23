import 'package:flutter/material.dart';

ThemeData customTheme = ThemeData(
  primaryColor:
      const Color(0xFF3498db), // Orange color for energy and enthusiasm
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Lora',
  appBarTheme: AppBarTheme(
    color: const Color(0xFF3498db),
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ).titleLarge,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFf39c12),
  ),
);
