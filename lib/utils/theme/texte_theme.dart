import 'package:chatapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TtextTheme {
  static TextTheme ligthTexttheme = TextTheme(
      headline2: GoogleFonts.lobsterTwo(
          color: Colors.white, textStyle: TextStyle(fontSize: 100)),
      subtitle1: GoogleFonts.poppins(fontSize: 24, color: Colors.black87));

  static TextTheme darkTextTheme = TextTheme(
      headline2: GoogleFonts.lobsterTwo(
          color: Colors.black54, textStyle: TextStyle(fontSize: 100)),
      subtitle1: GoogleFonts.poppins(fontSize: 24, color: Colors.white));
}
