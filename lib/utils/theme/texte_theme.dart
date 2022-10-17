import 'package:chatapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TtextTheme {
  static TextTheme ligthTexttheme = TextTheme(
    
      headline2: GoogleFonts.lobsterTwo(
          color: Colors.white, textStyle: TextStyle(fontSize: 100)),
      bodyText1: GoogleFonts.poppins(
          color: Colors.black54,
          fontSize: 14,
          textStyle: TextStyle(height: 1.7)),
      headline4: GoogleFonts.poppins(
          color: Colors.black87,
          fontSize: 24,
          textStyle: TextStyle(fontWeight: FontWeight.w600)),
      subtitle1: GoogleFonts.lobsterTwo(fontSize: 30, color: Colors.black));

  static TextTheme darkTextTheme = TextTheme(
      headline2: GoogleFonts.lobsterTwo(
          color: Colors.white, textStyle: TextStyle(fontSize: 100)),
      bodyText1: GoogleFonts.poppins(
          color: Colors.white, fontSize: 14, textStyle: TextStyle(height: 1.7)),
      headline4: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 24,
          textStyle: TextStyle(fontWeight: FontWeight.w600)),
      subtitle1: GoogleFonts.lobsterTwo(fontSize: 30, color: Colors.white));
}
