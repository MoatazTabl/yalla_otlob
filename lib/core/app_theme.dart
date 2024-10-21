import 'package:dahab_delivery/core/app_font.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static Color mainRed = const Color(0xffee1d23);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor:const Color(0xffFAFAE6),
    textTheme: AppFonts.textTheme,
    colorSchemeSeed: mainRed,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(mainRed),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),

    snackBarTheme: SnackBarThemeData(backgroundColor: mainRed,behavior: SnackBarBehavior.floating),
  );


  static ThemeData darkTheme = ThemeData(
    textTheme: AppFonts.textTheme,
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
    snackBarTheme: SnackBarThemeData(backgroundColor: mainRed,behavior: SnackBarBehavior.floating),

  );
}
