import 'package:flutter/material.dart';

abstract class AppTheme {
  static Color mainRed = const Color(0xffee1d23);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(mainRed),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(mainRed),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),

      ),
    ),
  );
}
