import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  MyTheme._();
  static Color kPrimaryColor = Colors.blue;
  static Color kPrimaryColorVariant = Colors.blue;
  static Color kAccentColor = Color.fromARGB(255, 0, 0, 0);
  static Color kAccentColorVariant = Color.fromARGB(255, 151, 204, 248);
  static Color kUnreadChatBG = Color(0xffEE1D1D);

  static final TextStyle kAppTitle = GoogleFonts.grandHotel(fontSize: 36);

  static final TextStyle heading2 = TextStyle(
    color: Color(0xFF202049),
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.5,
  );

  static final TextStyle chatSenderName = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
  );

  static final TextStyle bodyText1 = TextStyle(
      color: Color.fromARGB(255, 120, 131, 151),
      fontSize: 10,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);

  static final TextStyle bodyText2 = TextStyle(
      color: Color.fromARGB(255, 17, 208, 65),
      fontSize: 12,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);

  static final TextStyle bodyTextMessage =
      TextStyle(fontSize: 13, letterSpacing: 1.5, fontWeight: FontWeight.w600);

  static final TextStyle bodyTextTime = TextStyle(
    color: Color.fromARGB(114, 10, 8, 24),
    fontSize: 11,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
}
