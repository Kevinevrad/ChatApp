import 'package:flutter/material.dart';

import '../variables/var_constantes/image_var.dart';

class ImageChat extends StatefulWidget {
  ImageChat({super.key, this.enhaut, this.enbas, this.agauche, this.adroite});
  double? enhaut, enbas, agauche, adroite;

  @override
  State<ImageChat> createState() => _ImageChatState();
}

class _ImageChatState extends State<ImageChat> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 1600),
        top: widget.enhaut,
        bottom: widget.enbas,
        left: widget.agauche,
        right: widget.adroite,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            height: 150,
            width: 150,
            child: Image.asset(imgChat)));
  }
}
