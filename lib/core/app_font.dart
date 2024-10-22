import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {

  static TextTheme textTheme = TextTheme(
    headlineLarge: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 40.sp,
      ),
    ),
    headlineSmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
      ),
    ),
    labelLarge: GoogleFonts.roboto(
      textStyle: TextStyle(
          fontSize: 25.sp, fontWeight: FontWeight.w500, color: Colors.white),
    ),
    labelMedium: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        color: const Color(
          0xff1D1D21,
        ),
      ),
    ),
    labelSmall: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
