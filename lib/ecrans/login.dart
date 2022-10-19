import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      // ignore: prefer_const_constructor
                      // ignore: prefer_const_constructors

                      Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Color.fromARGB(255, 15, 48, 106),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.0)),
                          labelText: 'Email',
                          hintText: 'Email',
                        ),
                        autofocus: false,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.0)),
                          labelText: 'password',
                          hintText: 'Password',
                        ),
                        autofocus: false,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.0)),
                          labelText: 'confirm password',
                          hintText: 'confirm Password',
                        ),
                        autofocus: false,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    /*                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const Pageone())); */
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 44, 55, 208),
                          Color.fromARGB(126, 44, 11, 234)
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        width: 350,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Text(
                          'CONNEXION',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(09.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Vous avez un compte alors',
                        style: TextStyle(
                          color: Color.fromARGB(255, 16, 2, 2),
                          fontSize: 17,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      child: const Text("Connectez vous ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
