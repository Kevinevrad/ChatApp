import 'package:chatapp/pages/pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  List page = [MessagePage(), CallPAge(), NotificationPage(), ProfilePage()];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 225, 225),
      body: Center(child: widget.page[0]),
    );
  }
}
