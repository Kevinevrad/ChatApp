import 'package:flutter/material.dart';
import 'package:chatapp/data_theme.dart';

class SettingChat extends StatelessWidget {
  const SettingChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chatty',
          style: MyTheme.kAppTitle,
        ),
      ),
    );
  }
}
