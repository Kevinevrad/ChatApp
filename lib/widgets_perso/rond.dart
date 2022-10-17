import 'package:flutter/material.dart';

class roundBox extends StatefulWidget {
  roundBox(
      {super.key, this.top, this.left, required this.test, this.duree = 1600});
  double? top, left;
  int duree;
  bool test = true;

  @override
  State<roundBox> createState() => _roundBoxState();
}

class _roundBoxState extends State<roundBox> {
  bool anime = true;
  void initState() {
    // TODO: implement initState
    super.initState();
    debutTransition();
    debutTransition();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: widget.top,
      left: widget.left,
      duration: Duration(milliseconds: 1600),
      child: AnimatedContainer(
        duration: Duration(milliseconds: widget.duree),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: widget.test
              ? Colors.white
              : (anime ? Colors.transparent : Colors.white),
        ),
        height: widget.test ? 15 : (anime ? 15 : 15),
        width: widget.test ? 15 : (anime ? 0 : 15),
      ),
    );
  }

  Future debutTransition() async {
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      anime = false;
    });

    await Future.delayed(Duration(milliseconds: 5000));
  }
}
