import 'package:chatapp/ecrans/homePage.dart';
import 'package:chatapp/widgets_perso/bouttons.dart';
import 'package:chatapp/widgets_perso/textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = false, value2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: MediaQuery.of(context).size.width / 16,
            right: MediaQuery.of(context).size.width / 16,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(255, 223, 221, 221),
              ),
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 1.45,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  TextFieldEdit(
                      icon: Icons.person,
                      obscur: false,
                      refText: 'Your name',
                      label: 'Name',
                      hauteur: 55,
                      bordure: 25,
                      largeur: 300),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldEdit(
                      icon: Icons.mail,
                      obscur: false,
                      refText: 'your Email',
                      label: 'Email',
                      hauteur: 55,
                      bordure: 25,
                      largeur: 300),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldEdit(
                      icon: Icons.phone_iphone_rounded,
                      obscur: false,
                      refText: 'your phone number',
                      label: 'Phone',
                      hauteur: 55,
                      bordure: 25,
                      largeur: 300),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sexe',
                    style: TextStyle(fontSize: 22),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 300,
                      child: Divider(
                        height: 4,
                        thickness: 1,
                        color: Colors.blue,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.blue,
                            activeColor: Colors.blue,
                            visualDensity: VisualDensity.comfortable,
                            value: value,
                            onChanged: (newvalue) {
                              setState(() {
                                value = newvalue!;
                              });
                            },
                          ),
                          Text('Male'),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.blue,
                            activeColor: Colors.blue,
                            visualDensity: VisualDensity.comfortable,
                            value: value2,
                            onChanged: (newvalue) {
                              setState(() {
                                value2 = newvalue!;
                              });
                            },
                          ),
                          Text(
                            'Female',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Boutton(
                      hauteur: 50,
                      largeur: 300,
                      nombtn: 'Submit',
                      bordure: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('If you already have an account!'),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Click here',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
