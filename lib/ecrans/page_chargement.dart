import 'package:flutter/material.dart';

import '../variables/var_constantes/color_var.dart';
import '../variables/var_constantes/image_var.dart';
import '../widgets_perso/img_chat.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: couleurBase,
        body: Stack(
          children: [
            ImageChat(
              enhaut: 0,
              agauche: 0,
            ),
            ImageChat(
              enbas: 0,
              adroite: 0,
            ),
            Center(
              child: Text(
                'Chatty',
                style: Theme.of(context).textTheme.headline2,
              ),
            )
          ],
        ));
  }
}
