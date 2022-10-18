import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

//------- Couleur de base-------

class Appcolors {
  static const secondary = Color(0xFF3876F6);
  static const accent = Color(0xFFD67558);
  static const textdDark = Color(0xFF53585A);
  static const textLight = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const CardLight = Color(0xFFF9FAFE);
  static const CardDark = Color(0xFF303334);
}

  class LightColors {
  static const background = Colors.white;
  static const card = Appcolors.CardLight;
}

class DarkColors {
  static const background = Colors.black;
  static const card = Appcolors.CardDark;
}
