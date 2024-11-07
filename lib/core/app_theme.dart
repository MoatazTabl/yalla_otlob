import 'package:dahab_delivery/core/app_font.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static Color mainRed = const Color(0xffee1d23);
  static Color mainGrey = const Color(0xff121212);
  static Color whiteBackground = const Color(0xffFAFAE6);
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: whiteBackground,
    textTheme: AppFonts.textTheme,
    dividerColor: Colors.grey,
    colorScheme:
        ColorScheme.fromSeed(seedColor: mainRed, brightness: Brightness.light),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(mainRed),
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
        hintStyle:
            AppFonts.textTheme.labelSmall?.copyWith(color: Colors.grey[700])),
    appBarTheme: AppBarTheme(
      backgroundColor: mainRed,
      foregroundColor: Colors.white,
      titleTextStyle:
          AppFonts.textTheme.labelLarge?.copyWith(color: Colors.white),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            14,
          ),
        ),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: whiteBackground),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: mainRed,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: mainRed, backgroundColor: whiteBackground,
    enableFeedback: true,type: BottomNavigationBarType.fixed,),
    dialogTheme: DialogTheme(
      titleTextStyle: AppFonts.textTheme.labelLarge!.copyWith(
        color: AppTheme.mainRed,
        fontWeight: FontWeight.w700,
      ),
      contentTextStyle: AppFonts.textTheme.labelMedium!.copyWith(color: Colors.black87),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: AppFonts.textTheme,
      scaffoldBackgroundColor: mainGrey,
    dividerColor: Colors.white,
    colorScheme:
          ColorScheme.fromSeed(seedColor: mainRed, brightness: Brightness.dark),
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
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: mainGrey),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: mainRed,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: mainRed, backgroundColor: mainGrey,
          enableFeedback: true,type: BottomNavigationBarType.fixed,),
    dialogTheme: DialogTheme(
      titleTextStyle: AppFonts.textTheme.labelLarge!.copyWith(
        color: AppTheme.mainRed,
        fontWeight: FontWeight.w700,
      ),
      contentTextStyle: AppFonts.textTheme.labelMedium!.copyWith(color: Colors.white),
    ),
  );
}
