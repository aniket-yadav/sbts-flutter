import 'package:flutter/material.dart';

Map<int, Color> colorMap = {
  50: const Color(0xfffffbc4),
  100: const Color(0xfffff69c),
  200: const Color(0xfffff176),
  300: const Color(0xffffec52),
  400: const Color(0xffffe82d),
  500: const Color(0xFFFFDF00),
  600: const Color(0xffe1d300),
  700: const Color(0xffb1a500),
  800: const Color(0xff817800),
  900: const Color(0xff504b00),
};
var swatchColor = MaterialColor(0xFFFFDF00, colorMap);

ThemeData customTheme = ThemeData(
  primaryColor:
      const Color(0xFFFFDF00), // Orange color for energy and enthusiasm
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Lora',
  primarySwatch: swatchColor,
  canvasColor: const Color(0xFFFFFFFF),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      foregroundColor: MaterialStateProperty.all(const Color(0xFFFFFFFF)),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return const TextStyle(
              fontSize: 14,
              color: Color(0xFF000000),
              fontFamily: "Poppins",
            );
          } else if (states.contains(MaterialState.disabled)) {
            return const TextStyle(
              fontSize: 14,
              color: Color(0xFF000000),
              fontFamily: "Poppins",
            );
          } else {
            return const TextStyle(
              fontSize: 14,
              color: Color(0xFF000000),
              fontFamily: "Poppins",
            );
          }
        },
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      elevation: MaterialStateProperty.all(0),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return swatchColor;
          } else if (states.contains(MaterialState.disabled)) {
            return swatchColor.shade400;
          }
          return swatchColor;
        },
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      shadowColor: MaterialStateProperty.all(const Color(0x00ffffff)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide.none,
        ),
      ),
      splashFactory: NoSplash.splashFactory,
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return TextStyle(
              fontSize: 14,
              color: swatchColor,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            );
          }
          return TextStyle(
            fontSize: 14,
            color: swatchColor,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          );
        },
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return const Color(0xffFFFFFF);
          } else if (states.contains(MaterialState.disabled)) {
            return const Color(0xffFFFFFF);
          }
          return const Color(0xffFFFFFF);
        },
      ),
      side: MaterialStateProperty.all(BorderSide.none),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      shadowColor: MaterialStateProperty.all(Colors.transparent),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return TextStyle(
              fontSize: 14,
              color: swatchColor,
              fontFamily: "Poppins",
            );
          } else if (states.contains(MaterialState.disabled)) {
            return TextStyle(
              fontSize: 14,
              color: swatchColor.shade400,
              fontFamily: "Poppins",
            );
          }
          return const TextStyle(
            fontSize: 14,
            color: Color(0xFF868686),
            fontFamily: "Poppins",
          );
        },
      ),
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return BorderSide(color: swatchColor);
          }
          return BorderSide(color: swatchColor);
        },
      ),
    ),
  ),

  appBarTheme: AppBarTheme(
    color: const Color(0xFFFFDF00),
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ).titleLarge,
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15.0,
      vertical: 10.0,
    ),
    labelStyle: const TextStyle(
      color: Color(0xffB3B5B5),
      fontSize: 12.0,
    ),
    hintStyle: const TextStyle(
      color: Color(0xffB3B5B5),
      fontSize: 12.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        5.0,
      ),
      borderSide: BorderSide(
        color: Colors.grey[300]!,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        5.0,
      ),
      borderSide: const BorderSide(
        color: Color(0xFFFFDF00),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        5.0,
      ),
      borderSide: BorderSide(
        color: Colors.grey[300]!,
      ),
    ),
  ),

  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFFFDF00),
  ),
);
