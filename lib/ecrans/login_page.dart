import 'package:chatapp/ecrans/sign.dart';
import 'package:chatapp/widgets_perso/bouttons.dart';
import 'package:chatapp/widgets_perso/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/back1.png',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(66, 0, 0, 0), BlendMode.darken)

              // opacity: .7
              ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: MediaQuery.of(context).size.height / 6,
              left: MediaQuery.of(context).size.height / 6,
              top: MediaQuery.of(context).size.height * 0,
              child: Align(alignment: Alignment.center, child: Card()),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 4,
              right: MediaQuery.of(context).size.height / 23,
              left: MediaQuery.of(context).size.height / 23,
              child: Material(
                shadowColor: Colors.black,
                type: MaterialType.card,
                elevation: 50,
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        TextFieldEdit(
                            icon: Icons.person,
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
                            icon: Icons.password,
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15)),
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
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 15),
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
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 3,
                left: MediaQuery.of(context).size.width / 2.8,
                right: MediaQuery.of(context).size.width / 24,
                child: Text('CHATTY',
                    style: Theme.of(context).textTheme.headline6))
          ],
        ),
      ),
    );
  }
}
