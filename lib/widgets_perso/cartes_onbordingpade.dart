import 'package:chatapp/utils/theme/theme.dart';
import 'package:chatapp/variables/var_constantes/image_var.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cartes extends StatelessWidget {
  const Cartes(
      {super.key,
      required this.nom_img,
      required this.title,
      required this.bodytext1,
      required this.bodytext2});
  final String nom_img, title, bodytext1, bodytext2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    var size1 = MediaQuery.of(context).size.width;

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: size1 * 0.9,
              height: size * 0.9,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size1 * 0.7,
                    height: size * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: SvgPicture.asset(nom_img),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Text(
                    bodytext1,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    bodytext2,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    bodytext2,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lets make a little tour',
                    style: Theme.of(context).textTheme.subtitle2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
