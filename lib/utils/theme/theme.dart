import 'package:chatapp/utils/theme/texte_theme.dart';
import 'package:flutter/material.dart';

class TappTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TtextTheme.ligthTexttheme,
     
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
