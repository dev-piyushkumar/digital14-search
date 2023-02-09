import 'package:flutter/material.dart';
import 'text_styles.dart';

/// #103146
/// #294658
const Color backgroundColor = Color(0xFFffffff);
const Color onPrimaryContainer = Color(0xFF001D35);
const Color onSurface = Color(0xFF1A1C1E);
const int themePrimaryValue = 0xff103146;

final MaterialColor themeSwatch = const MaterialColor(
  themePrimaryValue,
  <int, Color>{
    50: Color(0xFF8898a3),
    100: Color(0xFF708390),
    200: Color(0xFF586f7e),
    300: Color(0xFF405a6b),
    400: Color(0xFF284659),
    500: Color(themePrimaryValue),
    600: Color(0xFF0e2c3f),
    700: Color(0xFF0d2738),
    800: Color(0xFF0b2231),
    900: Color(0xFF0a1d2a),
  },
);

final ThemeData appTheme = ThemeData(
  primarySwatch: themeSwatch,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: onPrimaryContainer,
    foregroundColor: onSurface,
  ),
  scaffoldBackgroundColor: backgroundColor,
  useMaterial3: true,
);
