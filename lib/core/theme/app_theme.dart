import 'package:flutter/material.dart';

class AppTheme {
  static const _pink = Color(0xFFFF6EC7);
  static const _lavender = Color(0xFF9F7AEA);

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: _pink, brightness: Brightness.light),
        scaffoldBackgroundColor: const Color(0xFFF9F5FF),
        cardTheme: const CardThemeData(
          elevation: 0,
          margin: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
        ),
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: _lavender, brightness: Brightness.dark),
        scaffoldBackgroundColor: const Color(0xFF120D1C),
      );
}
