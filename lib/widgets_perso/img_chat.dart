import 'package:flutter/material.dart';

import '../variables/var_constantes/image_var.dart';

class ImageChat extends StatelessWidget {
    ImageChat({super.key,this.enhaut,this.enbas,this.agauche,this.adroite});
  double? enhaut, enbas, agauche, adroite;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:  enhaut,
      bottom: enbas,
      left: agauche,
      right: adroite,

        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            height: 150,
            width: 150,
            child: Image.asset(imgChat)));
  }
}
