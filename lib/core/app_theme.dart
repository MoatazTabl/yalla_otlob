import 'package:dahab_delivery/core/app_font.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static Color mainRed = const Color(0xffee1d23);
  static Color mainGrey = const Color(0xff121212);
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xffFAFAE6),
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
    appBarTheme: AppBarTheme(
      backgroundColor: mainRed,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            14,
          ),
        ),
      ),),
    snackBarTheme: SnackBarThemeData(
        backgroundColor: mainRed, behavior: SnackBarBehavior.floating),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    textTheme: AppFonts.textTheme,
    scaffoldBackgroundColor: mainGrey,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(mainRed),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: mainRed,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            14,
          ),
        ),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
        backgroundColor: mainRed, behavior: SnackBarBehavior.floating),
  );
}
