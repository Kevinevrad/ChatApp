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
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: [
            ImageChat(
              enhaut: anime ? -130 : 130,
              agauche: anime ? -130 : 130,
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
    await Future.delayed(Duration(milliseconds: 4000));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnbordingPgae(),
        ));
  }
}
