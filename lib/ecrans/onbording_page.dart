import 'package:chatapp/ecrans/login_page.dart';
import 'package:chatapp/widgets_perso/bouttons.dart';
import 'package:chatapp/widgets_perso/cartes_onbordingpade.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../utils/theme/theme.dart';
import '../variables/var_constantes/image_var.dart';

class OnbordingPgae extends StatefulWidget {
  const OnbordingPgae({super.key});

  @override
  State<OnbordingPgae> createState() => _OnbordingPgaeState();
}

class _OnbordingPgaeState extends State<OnbordingPgae> {
  Brightness brightness = Brightness.light;
  bool test = true;
  String img3 = imglight3, img2 = imglight2, img1 = imglight1;
  Color? fond;

  @override
  void initState() {
    super.initState();
    final window = WidgetsBinding.instance.window;

    // This callback is called every time the brightness changes.
    window.onPlatformBrightnessChanged = () {
      final brightness = window.platformBrightness;

      if (brightness == Brightness.dark) {
        img1 = imgdark1;
        img3 = imgdark3;
        img2 = imgdark2;
        fond = Colors.black;
      } else {
        img1 = imglight1;
        img2 = imglight2;
        img3 = imglight3;
        fond = Colors.white;
      }
      WidgetsBinding.instance.handlePlatformBrightnessChanged();
    };
  }

  @override
  Widget build(BuildContext context) {
    PageController _pageviewcontroller = PageController();
    return Scaffold(
        backgroundColor: fond,
        body: Stack(
          children: [
            PageView(
              controller: _pageviewcontroller,
              pageSnapping: true,
              onPageChanged: (index) {
                test = (index == 2);
              },
              children: [
                Cartes(
                  nom_img: img3,
                  title: 'Welcome',
                  bodytext1: 'zertyuiopfghjkdfghjk',
                  bodytext2: 'fghjdfghjdfghfghfgh',
                ),
                Cartes(
                  nom_img: img2,
                  title: 'Follow steps',
                  bodytext1: 'zertyuiopfghjkdfghjk',
                  bodytext2: 'fghjdfghjdfghfghfgh',
                ),
                Cartes(
                  title: 'Fast convivial',
                  bodytext1: 'fghdfghjsdfghdfghjdfghsdfg',
                  bodytext2: 'dfghjkqsdfghjkn',
                  nom_img: img1,
                )
              ],
            ),
            Container(
                alignment: Alignment(0, 0.85),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //------------------------------
                    /* GestureDetector(
                      onTap: () {
                        _pageviewcontroller.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.fastLinearToSlowEaseIn);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                    ),*/
                    SizedBox(
                      width: 20,
                    ),

                    // ------- Changement effectué sur la derniere page au niveau du boutton next (next=>>Done) par le biais de la variable booleene
                    test
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                _pageviewcontroller.nextPage(
                                    duration: Duration(milliseconds: 700),
                                    curve: Curves.fastLinearToSlowEaseIn);
                              });
                            },
                            child: Boutton(
                              hauteur: 50,
                              largeur: 200,
                              nombtn: 'Next',
                              bordure: 10,
                            ))
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              });
                            },
                            child: Boutton(
                              hauteur: 50,
                              largeur: 200,
                              nombtn: 'Done',
                              bordure: 10,
                            )),
                  ],
                )),
          ],
        ));
  }
}
