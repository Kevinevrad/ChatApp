import 'package:flutter/material.dart';

class Boutton extends StatelessWidget {
  Boutton(
      {super.key,
      required this.hauteur,
      required this.largeur,
      required this.nombtn,
      this.bordure = 0});
  double hauteur, largeur;
  double? bordure;
  String nombtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hauteur,
      width: largeur,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(bordure!),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Center(
        child: Text(
          '$nombtn',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
