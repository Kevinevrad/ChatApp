import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<MenuItem>(
              padding: EdgeInsets.all(0),
              color: Theme.of(context).appBarTheme.backgroundColor,
              itemBuilder: (context) => [
                    PopupMenuItem(
                      height: 70,
                      value: MenuItem.item1,
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 40,
                            ),
                            Text(
                              'My account',
                              style: GoogleFonts.poppins(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Log Out',
                            style: GoogleFonts.poppins(fontSize: 18),
                          ),
                          SizedBox(
                            width: 72,
                          )
                        ],
                      ),
                      value: MenuItem.item2,
                    ),
                  ])
        ],
      ),
    );
  }
}

enum MenuItem {
  item1,
  item2,
}
