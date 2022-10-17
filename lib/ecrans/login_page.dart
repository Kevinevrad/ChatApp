import 'package:chatapp/ecrans/sign.dart';
import 'package:chatapp/widgets_perso/bouttons.dart';
import 'package:chatapp/widgets_perso/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 4.5,
            left: MediaQuery.of(context).size.height / 23,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 221, 221),
                  borderRadius: BorderRadius.circular(24)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    TextFieldEdit(
                        obscur: false,
                        refText: 'Username or Email',
                        label: 'User',
                        hauteur: 50,
                        bordure: 25,
                        largeur: 370),
                    SizedBox(
                      height: 30,
                    ),
                    TextFieldEdit(
                        obscur: true,
                        refText: 'user Name',
                        label: 'Password',
                        hauteur: 50,
                        bordure: 25,
                        largeur: 370),
                    SizedBox(
                      height: 50,
                    ),
                    Boutton(
                      hauteur: 50,
                      largeur: 370,
                      nombtn: 'Submit',
                      bordure: 25,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(' I already have an account ',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ));
                            },
                            child: Text(
                              'Click here',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            left: MediaQuery.of(context).size.height / 6,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.height / 4.1,
                  height: MediaQuery.of(context).size.height / 4.1,
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/images/user.png',
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
