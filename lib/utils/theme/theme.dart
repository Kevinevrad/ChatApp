import 'package:chatapp/utils/theme/texte_theme.dart';
import 'package:chatapp/variables/var_constantes/color_var.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  static const accentColors = Appcolors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  // Application du theme en mode eclairé et ses configs
  static ThemeData light() => ThemeData(
      backgroundColor: LightColors.background,
      scaffoldBackgroundColor: LightColors.background,
      visualDensity: visualDensity,
      cardColor: LightColors.card,
      primaryTextTheme:
          TextTheme(headline6: TextStyle(color: Appcolors.textdDark)),
      iconTheme: IconThemeData(color: Appcolors.iconDark),
      brightness: Brightness.light,
      accentColor: accentColors,
      textTheme: TtextTheme.ligthTexttheme);

  // Application du theme sombre et ses configs
  static ThemeData dark() => ThemeData(
      visualDensity: visualDensity,
      brightness: Brightness.dark,
      cardColor: DarkColors.card,
      backgroundColor: DarkColors.background,
      scaffoldBackgroundColor: DarkColors.background,
      iconTheme: IconThemeData(color: Appcolors.iconLight),
      primaryTextTheme:
          TextTheme(headline6: TextStyle(color: Appcolors.textLight)),
      textTheme: TtextTheme.darkTextTheme);

  static ThemeData getTheme(Brightness brightness) {
    print(brightness);
    return brightness == Brightness.light ? light() : dark();
  }
}
