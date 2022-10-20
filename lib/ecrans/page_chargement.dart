import 'package:chatapp/ecrans/onbording_page.dart';
import 'package:flutter/material.dart';

import '../variables/var_constantes/color_var.dart';
import '../variables/var_constantes/image_var.dart';
import '../widgets_perso/rond.dart';
import '../widgets_perso/img_chat.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool anime = true;
  bool anime1 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debutTransition();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    final size1 = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Appcolors.secondary,
        body: Stack(
          children: [
            ImageChat(
              enhaut: anime1
                  ? (anime ? -150 : size / 5)
                  : (anime ? size / 5 : size / 4.2),
              agauche: 130,
              adroite: 130,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: MediaQuery.of(context).size.height / 1.5,
              left: anime ? size1 / 2.5 : size1 / 4,
              right: anime ? size1 / 2.5 : size1 / 4,
              child: Container(
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),

            //------------- NOM DE L'APPLICATION AU CENTRE ---------//
            AnimatedPositioned(
              top: size / 2.2,
              bottom: 0,
              left: size1 / 9,
              duration: Duration(milliseconds: 1600),
              child: Text(
                'Chatty',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            //------------- NOM DE L'APPLICATION AU CENTRE ---------//

            roundBox(
              test: true,
              top: size / 1.73,
              left: size1 / 1.42,
            ),
            roundBox(
              duree: 500,
              test: false,
              top: size / 1.73,
              left: size1 / 1.3,
            ),
            roundBox(
              duree: 2500,
              test: false,
              top: size / 1.73,
              left: size1 / 1.2,
            )
          ],
        ));
  }

  Future debutTransition() async {
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      anime = false;
    });
    await Future.delayed(Duration(milliseconds: 1500));
    setState(() {
      anime1 = true;
    });
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnbordingPgae(),
        ));
  }
}
