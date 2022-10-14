import 'package:chatapp/utils/theme/texte_theme.dart';
import 'package:flutter/material.dart';

class TappTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TtextTheme.ligthTexttheme,
    primarySwatch: const MaterialColor(0xFF4D91FF, <int, Color>{
      50: Color(0xFF4D91FF),
      100: Color(0xEB3982F7),
      200: Color(0xD73982F7),
      300: Color(0xC43982F7),
      400: Color(0xAF3982F7),
      500: Color(0x9C3982F7),
      600: Color(0x873982F7),
      700: Color(0x743982F7),
      800: Color(0x5F3982F7),
      900: Color(0x4B3982F7)
    }),
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
