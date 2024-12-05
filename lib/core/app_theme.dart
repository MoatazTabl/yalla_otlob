import 'package:yalla_otlob/core/app_font.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static Color vividRed = const Color(0xffDb3D1A);
  static Color darkGrey = const Color(0xff7F7F7F);
  static Color whiteBackground = const Color(0xffFAFAE6);
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: whiteBackground,
    textTheme: AppFonts.textTheme,
    dividerColor: Colors.grey,
    colorScheme:
        ColorScheme.fromSeed(seedColor: vividRed, brightness: Brightness.light),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(vividRed),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.grey[700],
      ),
      hintStyle: AppFonts.textTheme.labelSmall?.copyWith(
        color: Colors.grey[700],
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: vividRed,
      foregroundColor: Colors.white,
      titleTextStyle: AppFonts.textTheme.labelLarge?.copyWith(
        color: Colors.white,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            14,
          ),
        ),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: whiteBackground,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: vividRed,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: vividRed,
      backgroundColor: whiteBackground,
      enableFeedback: true,
      type: BottomNavigationBarType.fixed,
    ),
    dialogTheme: DialogTheme(
      titleTextStyle: AppFonts.textTheme.labelLarge!.copyWith(
        color: AppTheme.vividRed,
        fontWeight: FontWeight.w700,
      ),
      contentTextStyle:
          AppFonts.textTheme.labelMedium!.copyWith(color: Colors.black87),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppFonts.textTheme,
    scaffoldBackgroundColor: darkGrey,
    dividerColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: vividRed,
      brightness: Brightness.dark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          vividRed,
        ),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(color: Colors.white),
        ),
        foregroundColor: WidgetStateProperty.all(
          Colors.white,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: vividRed,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            14,
          ),
        ),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkGrey,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: vividRed,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: vividRed,
      backgroundColor: darkGrey,
      enableFeedback: true,
      type: BottomNavigationBarType.fixed,
    ),
    dialogTheme: DialogTheme(
      titleTextStyle: AppFonts.textTheme.labelLarge!.copyWith(
        color: AppTheme.vividRed,
        fontWeight: FontWeight.w700,
      ),
      contentTextStyle: AppFonts.textTheme.labelMedium!.copyWith(
        color: Colors.white,
      ),
    ),
  );
}
