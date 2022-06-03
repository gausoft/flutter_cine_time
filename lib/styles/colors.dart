import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  //decorationColor
  //primaryColor
  //secondaryColor
  //accentColor
  //textColor

  static const int black = 0xFF000000;
  static const int yellow = 0xFFFFC000;
  static const int green = 0xFF27AE60;
  static const int danger = 0xFFEB5757;

  static const Color primaryColor = Color(black);
  static const Color accentColor = Color(yellow);
  static const Color secondaryColor = Colors.white;
  static const Color backgroundColor = Color(0xFFFAFAFA);
  static const Color successColor = Color(green);
  static const Color dangerColor = Color(danger);
  static const Color appGrey = Color(0xFF828282);

  static const MaterialColor primarySwatch = MaterialColor(
    black,
    appColorSwatch,
  );

  static const Map<int, Color> appColorSwatch = <int, Color>{
    50: Color.fromRGBO(0, 0, 0, .1),
    100: Color.fromRGBO(0, 0, 0, .2),
    200: Color.fromRGBO(0, 0, 0, .3),
    300: Color.fromRGBO(0, 0, 0, .4),
    400: Color.fromRGBO(0, 0, 0, .5),
    500: Color.fromRGBO(0, 0, 0, .6),
    600: Color.fromRGBO(0, 0, 0, .7),
    700: Color.fromRGBO(0, 0, 0, .8),
    800: Color.fromRGBO(0, 0, 0, .9),
    900: Color.fromRGBO(0, 0, 0, 1),
  };
}
