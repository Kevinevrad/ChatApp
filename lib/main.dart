import 'package:chatapp/data_theme.dart';
import 'package:chatapp/ecrans/home_chatte.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatty',
      theme: ThemeData(
        primaryColor: MyTheme.kPrimaryColor,
        appBarTheme: AppBarTheme(color: Color(0xff7C7B9B)),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: MyTheme.kAccentColor),
      ),
      home: const HomeChat(),
    );
  }
}
