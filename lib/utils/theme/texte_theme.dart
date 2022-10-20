import 'package:chatapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TtextTheme {
  static TextTheme ligthTexttheme = TextTheme(
      headline6: GoogleFonts.lobster(
        color: Colors.black,
        fontSize: 32,
      ),
      headline3: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 28,
          textStyle: TextStyle(fontWeight: FontWeight.bold)),
      headline2: GoogleFonts.lobsterTwo(
          color: Colors.white, textStyle: TextStyle(fontSize: 100)),
      bodyText1: GoogleFonts.poppins(
          color: Colors.black54,
          fontSize: 18,
          textStyle: TextStyle(height: 1.7)),
      headline4: GoogleFonts.poppins(
          color: Colors.black87,
          fontSize: 24,
          textStyle: TextStyle(fontWeight: FontWeight.w600)),
      subtitle1: GoogleFonts.lobsterTwo(fontSize: 30, color: Colors.black));

  static TextTheme darkTextTheme = TextTheme(
      headline6: GoogleFonts.lobster(
        color: Colors.white,
        fontSize: 32,
      ),
      headline2: GoogleFonts.lobsterTwo(
          color: Colors.white, textStyle: TextStyle(fontSize: 100)),
      bodyText1: GoogleFonts.grandHotel(
          color: Colors.white, fontSize: 13, textStyle: TextStyle(height: 1.7)),
      headline4: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 24,
          textStyle: TextStyle(fontWeight: FontWeight.w600)),
      subtitle1: GoogleFonts.lobsterTwo(fontSize: 30, color: Colors.white));
}
