import 'package:chatapp/pages/pages.dart';
import 'package:chatapp/widgets_perso/bouttons.dart';
import 'package:chatapp/widgets_perso/textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            'Account Setting',
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            IconButton(
                onPressed: (() {
                  setState(() {
                    click = !click;
                  });
                }),
                icon: click
                    ? Icon(
                        Icons.bookmark_outline_outlined,
                        color: Colors.black,
                      )
                    : Icon(
                        Icons.bookmark,
                        color: Colors.black,
                      ))
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/Addison.jpg'),
                    ),
                    Positioned(
                        bottom: 2,
                        right: 5,
                        child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            )))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Column(
                    children: [
                      TextFieldEdit(
                        refText: '',
                        label: 'Username',
                        hauteur: 50,
                        largeur: 370,
                        bordure: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldEdit(
                        refText: '',
                        label: 'Full Name',
                        hauteur: 50,
                        largeur: 370,
                        bordure: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldEdit(
                        refText: '',
                        label: 'Email Address',
                        hauteur: 50,
                        largeur: 370,
                        bordure: 10,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldEdit(
                        refText: '',
                        label: 'Phone Number',
                        hauteur: 50,
                        largeur: 370,
                        bordure: 10,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Boutton(
                        hauteur: 50,
                        largeur: 370,
                        nombtn: 'Save Changes',
                        bordure: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
