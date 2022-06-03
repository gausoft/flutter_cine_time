import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppFonts {
  static const FontWeight light = FontWeight.w200;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w600;
  static const FontWeight semibold = FontWeight.w700;
  static const FontWeight bold = FontWeight.w900;
}

class AppTheme {
  static const TextStyle headline1 = TextStyle(
    color: Colors.black,
    fontSize: 38,
    fontWeight: AppFonts.medium,
    letterSpacing: 1.2,
  );

  static const TextStyle headline2 = TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1,
  );

  static TextStyle heading = const TextStyle(
    fontWeight: AppFonts.bold,
    fontSize: 24,
    color: Colors.black,
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.white.withOpacity(0.8),
  );

  static String appName = "CineTime";

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Product Sans',
    // textTheme: GoogleFonts.soraTextTheme(),
    primarySwatch: AppColors.primarySwatch,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xF3F3F3F3),
      hintStyle: const TextStyle(
        color: Color(0xFF9B9B9B),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
