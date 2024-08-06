// import 'package:adaptive_theme/adaptive_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../constants/app_colors.dart';
// import '../constants/app_fonts.dart';
// import '../translations/app_local.dart';

// part '../enums/app_font_weight.dart';

// /// This class [AppTheme] is defined to contain two basic variables that represent the application's theme,
// ///  where [darkTheme] represents the dark theme, [lightTheme] represents the basic theme.
// ///

// class AppTheme {
//   static AppTheme? _instance;
//   AppTheme._();
//   factory AppTheme() => _instance ??= AppTheme._();

//   ///////////////////// lightTheme /////////////////////////
//   ThemeData lightTheme(BuildContext context) => ThemeData.light().copyWith(
//         brightness: Brightness.light,

//         primaryColor: AppColors.green,
//         primaryColorDark: AppColors.black,
//         primaryColorLight: AppColors.white,
//         textTheme: TextTheme(
//           // Headline
//           headlineLarge:
//               textStyle(context, AppFontWeight.medium, AppColors.black, 18.sp),
//           headlineMedium:
//               textStyle(context, AppFontWeight.medium, AppColors.black, 17.sp),
//           headlineSmall:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 16.sp),

//           // Title
//           titleLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 21.sp),
//           titleMedium:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 18.sp),
//           titleSmall:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 16.sp),

//           // body
//           bodyLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 16.sp),
//           bodyMedium:
//               textStyle(context, AppFontWeight.light, AppColors.black, 16.sp),
//           bodySmall:
//               textStyle(context, AppFontWeight.light, AppColors.black, 15.sp),

//           // display
//           displayLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 18.sp),
//           displayMedium:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),
//           displaySmall:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 15.sp),

//           // label
//           labelLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 18.sp),
//           labelMedium:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 16.sp),
//           labelSmall:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 15.sp),
//         ),

//         // Light App Bar Theme
//         appBarTheme: AppBarTheme(
//           systemOverlayStyle: const SystemUiOverlayStyle(
//             statusBarColor: AppColors.transparent,
//             statusBarIconBrightness: Brightness.dark,
//             statusBarBrightness: Brightness.light,
//           ),
//           backgroundColor: AppColors.transparent,
//           elevation: 0,
//           iconTheme: IconThemeData(color: AppColors.black, size: 18.sp),
//           actionsIconTheme: IconThemeData(color: AppColors.black, size: 18.sp),
//           foregroundColor: AppColors.black,
//           surfaceTintColor: AppColors.black,
//           toolbarTextStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 16.sp),
//           titleTextStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 17.sp),
//         ),

//         // Light Scaffold Color
//         scaffoldBackgroundColor: AppColors.white,

//         // Light Input Decoration
//         inputDecorationTheme: InputDecorationTheme(
//           iconColor: AppColors.black,
//           hintStyle: textStyle(
//               context, AppFontWeight.regular, AppColors.textGrey, 15.sp),
//           suffixIconColor: AppColors.black,
//           prefixIconColor: AppColors.black,
//           filled: true,
//           fillColor: AppColors.transparent,
//           border: outlineInputBorder(
//             const BorderSide(color: AppColors.black, width: 1),
//           ),
//           enabledBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.black, width: 1),
//           ),
//           focusedErrorBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.red, width: 1.8),
//           ),
//           errorBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.red, width: 1),
//           ),
//           focusedBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.black, width: 1.8),
//           ),
//           labelStyle:
//               textStyle(context, AppFontWeight.light, AppColors.black, 13.sp),
//           errorStyle:
//               textStyle(context, AppFontWeight.light, AppColors.red, 15.sp),
//           counterStyle:
//               textStyle(context, AppFontWeight.light, AppColors.black, 15.sp),
//           isDense: true,
//           helperStyle:
//               textStyle(context, AppFontWeight.light, AppColors.black, 15.sp),
//           suffixStyle:
//               textStyle(context, AppFontWeight.light, AppColors.black, 15.sp),
//           prefixStyle:
//               textStyle(context, AppFontWeight.light, AppColors.black, 15.sp),
//         ),

//         // Light snackBar Theme
//         snackBarTheme: SnackBarThemeData(
//           backgroundColor: AppColors.blackAccent.withOpacity(0.8),
//           contentTextStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 15.sp),
//           actionTextColor: AppColors.white,
//         ),

//         // Light actionIcon Theme
//         actionIconTheme: ActionIconThemeData(
//           backButtonIconBuilder: (context) => const Icon(
//             Icons.arrow_back_ios_rounded,
//             color: AppColors.black,
//           ),
//         ),
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: AppColors.lightMaterialColor,
//           brightness: Brightness.light,
//         ),
//         canvasColor: AppColors.black,

//         // Light floating Action Button Theme
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: AppColors.black,
//           elevation: 2,
//           iconSize: 25.sp,
//           foregroundColor: AppColors.white,
//         ),

//         // Icon Theme
//         iconTheme: IconThemeData(color: AppColors.black, size: 23.sp),

//         // Light  bottom Navigation Bar Theme
//         bottomNavigationBarTheme: BottomNavigationBarThemeData(
//           backgroundColor: AppColors.white,
//           elevation: 2,
//           unselectedLabelStyle: textStyle(
//               context, AppFontWeight.light, AppColors.darkGray, 13.sp),
//           selectedLabelStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 13.sp),
//           unselectedIconTheme: IconThemeData(
//             color: AppColors.darkGray,
//             size: 23.sp,
//           ),
//           unselectedItemColor: AppColors.darkGray,
//           selectedIconTheme: IconThemeData(
//             color: AppColors.black,
//             size: 25.sp,
//           ),
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           selectedItemColor: AppColors.black,
//           type: BottomNavigationBarType.shifting,
//         ),
//       );

//   ///////////////////// Dark Theme /////////////////////////
//   ThemeData darkTheme(BuildContext context) => ThemeData.dark().copyWith(
//         brightness: Brightness.dark,
//         primaryColor: AppColors.green,
//         primaryColorDark: AppColors.white,
//         primaryColorLight: AppColors.black,

//         textTheme: TextTheme(
//           // Headline
//           headlineLarge:
//               textStyle(context, AppFontWeight.medium, AppColors.white, 18.sp),
//           headlineMedium:
//               textStyle(context, AppFontWeight.medium, AppColors.white, 17.sp),
//           headlineSmall:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),

//           // Title
//           titleLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 21.sp),
//           titleMedium:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 18.sp),
//           titleSmall:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),

//           // body
//           bodyLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),
//           bodyMedium:
//               textStyle(context, AppFontWeight.light, AppColors.white, 16.sp),
//           bodySmall:
//               textStyle(context, AppFontWeight.light, AppColors.white, 15.sp),

//           // display
//           displayLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 18.sp),
//           displayMedium:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 16.sp),
//           displaySmall:
//               textStyle(context, AppFontWeight.regular, AppColors.black, 15.sp),

//           // label
//           labelLarge:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 18.sp),
//           labelMedium:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),
//           labelSmall:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 15.sp),
//         ),

//         // Dark App Bar Theme
//         appBarTheme: AppBarTheme(
//           backgroundColor: AppColors.transparent,
//           elevation: 0,
//           iconTheme: IconThemeData(color: AppColors.white, size: 18.sp),
//           actionsIconTheme: IconThemeData(color: AppColors.white, size: 18.sp),
//           foregroundColor: AppColors.white,
//           surfaceTintColor: AppColors.white,
//           toolbarTextStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),
//           titleTextStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 17.sp),
//         ),

//         // Dark Scaffold Color
//         scaffoldBackgroundColor: AppColors.blackAccent,

//         // Dark Input Decoration
//         inputDecorationTheme: InputDecorationTheme(
//           iconColor: AppColors.white,
//           hintStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 15.sp),
//           suffixIconColor: AppColors.white,
//           prefixIconColor: AppColors.white,
//           filled: true,
//           fillColor: AppColors.transparent,
//           border: outlineInputBorder(
//             const BorderSide(color: AppColors.white, width: 1),
//           ),
//           enabledBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.white, width: 1),
//           ),
//           focusedErrorBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.red, width: 1.8),
//           ),
//           errorBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.red, width: 1),
//           ),
//           focusedBorder: outlineInputBorder(
//             const BorderSide(color: AppColors.white, width: 1.8),
//           ),
//           labelStyle:
//               textStyle(context, AppFontWeight.light, AppColors.white, 13.sp),
//           errorStyle:
//               textStyle(context, AppFontWeight.light, AppColors.red, 15.sp),
//           counterStyle:
//               textStyle(context, AppFontWeight.light, AppColors.white, 15.sp),
//           isDense: true,
//           helperStyle:
//               textStyle(context, AppFontWeight.light, AppColors.white, 15.sp),
//           suffixStyle:
//               textStyle(context, AppFontWeight.light, AppColors.white, 15.sp),
//           prefixStyle:
//               textStyle(context, AppFontWeight.light, AppColors.white, 15.sp),
//         ),

//         // Dark snackBar Theme
//         snackBarTheme: SnackBarThemeData(
//           backgroundColor: AppColors.white.withOpacity(0.8),
//           contentTextStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 15.sp),
//           actionTextColor: AppColors.black,
//         ),

//         // Dark actionIcon Theme
//         actionIconTheme: ActionIconThemeData(
//           backButtonIconBuilder: (context) => const Icon(
//             Icons.arrow_back_ios_rounded,
//             color: AppColors.white,
//           ),
//         ),
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: AppColors.darkMaterialColor,
//           brightness: Brightness.dark,
//         ),
//         canvasColor: AppColors.white,

//         // Dark floating Action Button Theme
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           backgroundColor: AppColors.white,
//           elevation: 2,
//           iconSize: 25.sp,
//           foregroundColor: AppColors.black,
//         ),

//         // Icon Theme
//         iconTheme: IconThemeData(color: AppColors.white, size: 23.sp),

//         // Dark  bottom Navigation Bar Theme
//         bottomNavigationBarTheme: BottomNavigationBarThemeData(
//           backgroundColor: AppColors.blackAccent,
//           elevation: 2,
//           unselectedLabelStyle: textStyle(
//               context, AppFontWeight.light, AppColors.darkGray, 16.sp),
//           selectedLabelStyle:
//               textStyle(context, AppFontWeight.regular, AppColors.white, 16.sp),
//           unselectedIconTheme: IconThemeData(
//             color: AppColors.greyAccent,
//             size: 23.sp,
//           ),
//           unselectedItemColor: AppColors.darkGray,
//           selectedIconTheme: IconThemeData(
//             color: AppColors.white,
//             size: 25.sp,
//           ),
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           selectedItemColor: AppColors.black,
//           type: BottomNavigationBarType.shifting,
//         ),
//       );

//   void refreshTheme(BuildContext context) {
//     AdaptiveTheme.of(context).setTheme(
//       light: lightTheme(context),
//       dark: darkTheme(context),
//       notify: true,
//     );
//   }

//   void changeTheme(BuildContext context) =>
//       AdaptiveTheme.of(context).mode == AdaptiveThemeMode.light
//           ? AdaptiveTheme.of(context).setDark()
//           : AdaptiveTheme.of(context).setLight();

//   void setDarkMode(BuildContext context) => AdaptiveTheme.of(context).setDark();

//   void setLightMode(BuildContext context) =>
//       AdaptiveTheme.of(context).setLight();

//   bool isLight(BuildContext context) =>
//       AdaptiveTheme.of(context).mode == AdaptiveThemeMode.light;

//   AdaptiveThemeMode currentAppTheme(BuildContext context) =>
//       AdaptiveTheme.of(context).mode;

//   bool isLightByBrightness(Brightness brightness) =>
//       brightness == Brightness.light;

//   bool isDark(BuildContext context) =>
//       AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

//   bool isDarkByBrightness(Brightness brightness) =>
//       brightness == Brightness.dark;

//   TextStyle textStyle(BuildContext context, AppFontWeight appFontWeight,
//           Color color, double size,
//           {String? family}) =>
//       TextStyle(
//         fontFamily: family ??
//             (AppLocale().isEnglish(context)
//                 ? AppFonts.kanit
//                 : AppFonts.almarai),
//         color: color,
//         fontWeight: _getFontWeight(appFontWeight),
//         fontSize: size,
//         height: AppLocale().isArabic(context) ? 1.5 : null,
//       );

//   FontWeight _getFontWeight(AppFontWeight appFontWeight) {
//     switch (appFontWeight) {
//       case AppFontWeight.bold:
//         return FontWeight.bold;
//       case AppFontWeight.light:
//         return FontWeight.w300;
//       case AppFontWeight.medium:
//         return FontWeight.w500;
//       case AppFontWeight.regular:
//         return FontWeight.normal;
//     }
//   }

//   OutlineInputBorder outlineInputBorder(BorderSide borderSide,
//           {BorderRadius? borderRadius}) =>
//       OutlineInputBorder(
//         borderRadius: borderRadius ?? BorderRadius.circular(9),
//         borderSide: borderSide,
//       );
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

/// This class [AppTheme] is defined to contain two basic variables that represent the application's theme,
///  where [darkTheme] represents the dark theme, [lightTheme] represents the basic theme.
///

class AppTheme {
  static AppTheme? _instance;
  AppTheme._();
  factory AppTheme() => _instance ??= AppTheme._();
  static const String _fontFamily = 'OpenSans';

  final lightTheme = ThemeData.light().copyWith(
    primaryColorLight: AppColors.primary,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 57.sp, fontWeight: FontWeight.bold, color: AppColors.white, fontFamily: _fontFamily),
      displayMedium: TextStyle(fontSize: 45.sp, fontWeight: FontWeight.bold, color: AppColors.white, fontFamily: _fontFamily),
      displaySmall: TextStyle(fontSize: 36.sp, fontWeight: FontWeight.bold, color: AppColors.white, fontFamily: _fontFamily),
      headlineLarge: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold, color: AppColors.white, fontFamily: _fontFamily), 
      headlineMedium: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: AppColors.white, fontFamily: _fontFamily), 
      headlineSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w800, color: AppColors.black, fontFamily: _fontFamily),/// 
      labelLarge: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w900,  color: AppColors.black, fontFamily: _fontFamily),//
      labelMedium: TextStyle(fontSize: 11.sp, color: AppColors.blackLite, fontFamily: _fontFamily),///
      labelSmall: TextStyle(fontSize: 11.sp, color: AppColors.white, fontFamily: _fontFamily),
      titleLarge: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: AppColors.white, fontFamily: _fontFamily),
      titleMedium: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: AppColors.black, fontFamily: _fontFamily),
      titleSmall: TextStyle(fontSize: 14.sp, color: AppColors.primary, fontFamily: _fontFamily),
      bodyLarge: TextStyle(fontSize: 16.sp,  color: AppColors.darkGray1, fontFamily: _fontFamily),
      bodyMedium: TextStyle(fontSize: 14.sp,  color: AppColors.darkGray, fontFamily: _fontFamily),//
      bodySmall: TextStyle(fontSize: 12.sp, color: AppColors.darkGray1,fontWeight: FontWeight.w400 , fontFamily: _fontFamily),
      
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.black),
      toolbarTextStyle: TextStyle(
        color: AppColors.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: AppColors.white,
    inputDecorationTheme: const InputDecorationTheme(
      
      iconColor: AppColors.darkGrey,
      hintStyle:  TextStyle(color: AppColors.hintColor,fontFamily: _fontFamily,fontSize: 20),
     
      suffixIconColor: AppColors.black,
      prefixIconColor: AppColors.black,
      filled: true,
      fillColor: AppColors.white,
   
  

      focusColor: AppColors.black,
      enabledBorder: UnderlineInputBorder(
         borderSide: BorderSide(color: AppColors.black)
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.black)
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.black)
      ),
      labelStyle:  TextStyle(color: AppColors.green),
      errorStyle:  TextStyle(color: AppColors.red),
      counterStyle:  TextStyle(color: AppColors.black),
      isDense: true,
      helperStyle:  TextStyle(color: AppColors.black),
      suffixStyle:  TextStyle(color: AppColors.black),
      prefixStyle:  TextStyle(color: AppColors.black),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.green,
    ),
  
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.primary.withOpacity(0.8),
      contentTextStyle: const TextStyle(color: AppColors.white),
      actionTextColor: AppColors.white,
    ),
  );
}
