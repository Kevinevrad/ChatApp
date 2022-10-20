import 'package:chatapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';

import 'ecrans/page_chargement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Brightness brightness = Brightness.light;
  void initState() {
    super.initState();
    final window = WidgetsBinding.instance.window;

    // This callback is called every time the brightness changes.
    window.onPlatformBrightnessChanged = () {
      final brightness = window.platformBrightness;
    };
    WidgetsBinding.instance.handlePlatformBrightnessChanged();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Apptheme.getTheme(brightness),
      darkTheme: Apptheme.dark(),
      themeMode: ThemeMode.system,
      home: LoadingPage(),
    );
  }
}
