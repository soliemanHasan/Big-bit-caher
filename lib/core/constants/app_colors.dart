import 'package:flutter/material.dart';

/// Define this class for all colors that can be used in the application
/// You can define [Color] in the following way:
///
/// static const Color colorName = Color(colorHex);
///
///
/// You can also define [MaterialColor] in the same class in the following way:
///
/// static const MaterialColor materialColor = MaterialColor(
///     colorHex,
///     <int, Color>{
///       50: Color(colorHex50),
///       100: Color(colorHex100),
///       200: Color(colorHex200),
///       300: Color(colorHex300),
///       400: Color(colorHex400),
///       500: Color(colorHex500),
///       600: Color(colorHex600),
///       700: Color(colorHex700),
///       800: Color(colorHex800),
///       900: Color(colorHex900),
///     },
///   );

class AppColors {
  // TODO: customize your Colors

  static const primary = Color(0XFFEC3525);
  static const primarywithocity = Color(0x90EC3525);
  static const Color green = Color(0xFF4CAF50);
  static const Color darkGrey = Color(0xFFB1B1B1);

  static const Color greyAccent = Color(0xFFF5F5F5);
  static const Color grey = Color(0xFFC7C7C7);
  static const Color black = Color(0xFF333333);
  static const Color blue = Color(0xFF0978F2);
  static const Color red = Color(0xFFFF5757);
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;
  static const Color blackAccent = Color(0xFF333333);
  static const Color darkGray = Color(0xFFDDDDDD);
  static const Color darkGray1 = Color(0xFF626262);
  static const Color blackLite = Color(0xFF777777);
  static const Color hintColor = Color(0xFFd6d6d7);
  static const Color navigationIconBarColor = Color(0xFFACACAC);
  static const Color closeColor = Color(0Xff29282f);
  static const Color bookComponentColor = Color(0xffe7f2f3);
  static const Color selectedIconColor = Color(0x80EC3525);
    static const Color greyLit =Color(0xfff3f0f0);


  static const Color textGrey = Color(0xFFA89E9E);

  static MaterialColor _createMaterialColor(Color color) {
    Map<int, Color> swatch = {
      50: color.withOpacity(0.05),
      100: color.withOpacity(0.1),
      200: color.withOpacity(0.2),
      300: color.withOpacity(0.3),
      400: color.withOpacity(0.4),
      500: color.withOpacity(0.5),
      600: color.withOpacity(0.6),
      700: color.withOpacity(0.7),
      800: color.withOpacity(0.8),
      900: color.withOpacity(0.9),
    };
    return MaterialColor(color.value, swatch);
  }

  static final MaterialColor lightMaterialColor = _createMaterialColor(black);
  static final MaterialColor darkMaterialColor = _createMaterialColor(white);
}
