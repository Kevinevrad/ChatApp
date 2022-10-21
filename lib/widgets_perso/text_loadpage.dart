import 'package:flutter/material.dart';

class TextLoadPage extends StatelessWidget {
  TextLoadPage(
      {super.key,
      this.top,
      this.left,
      this.bottom,
      required this.text,
      this.rigth,
      required this.test});
  double? top, left, bottom, rigth;
  String? text;
  bool test;

  @override
  Widget build(BuildContext context) {
    TextStyle? form = Theme.of(context).textTheme.headline2;
    TextStyle? form_1 = Theme.of(context).textTheme.subtitle1;

    return AnimatedPositioned(
      top: top,
      left: left,
      bottom: bottom,
      right: rigth,
      duration: Duration(milliseconds: 1600),
      child: AnimatedOpacity(
          duration: Duration(milliseconds: 1600),
          opacity: test ? 0 : 1,
          child: Text('$text', style: test ? form : form_1)),
    );
  }
}
