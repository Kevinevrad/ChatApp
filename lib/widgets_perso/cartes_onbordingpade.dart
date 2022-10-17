import 'package:chatapp/utils/theme/theme.dart';
import 'package:chatapp/variables/var_constantes/image_var.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cartes extends StatelessWidget {
  const Cartes({super.key, required this.nom_img});
  final String nom_img;

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
              height: size * 0.21,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Welcome",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    'Hello world how are you to day are felling Goood',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Hello world how are you to day are felling Goood',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    'Hello world how are you  kkkkk',
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
            SizedBox(
              height: 30,
            ),
            Container(
              width: size1 * 0.7,
              height: size * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
              ),
              child: SvgPicture.asset(nom_img),
            )
          ],
        ),
      ),
    );
  }
}
