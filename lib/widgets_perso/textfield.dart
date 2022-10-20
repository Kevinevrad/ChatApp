import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldEdit extends StatefulWidget {
  TextFieldEdit(
      {super.key,
      this.icon,
      this.obscur = false,
      this.couleurLabel = Colors.black,
      required this.refText,
      required this.label,
      this.bordure = 0,
      required this.hauteur,
      required this.largeur});
  double hauteur, largeur, bordure;
  String label, refText;
  Color couleurLabel;
  bool obscur;
  IconData? icon;

  @override
  State<TextFieldEdit> createState() => _TextFieldEditState();
}

class _TextFieldEditState extends State<TextFieldEdit> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.largeur,
      height: widget.hauteur,
      child: TextFormField(
        controller: _controller,
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: 70,
            ),
            labelText: widget.label,
            prefixIcon: Icon(
              widget.icon,
              size: 30,
            ),
            labelStyle:
                GoogleFonts.poppins(fontSize: 20, color: widget.couleurLabel),
            hintText: widget.refText,
            hintStyle:
                GoogleFonts.poppins(fontSize: 15, color: widget.couleurLabel),
            border: OutlineInputBorder(
                gapPadding: 5,
                borderSide:
                    BorderSide(color: Color.fromRGBO(0, 176, 255, 1), width: 1),
                borderRadius: BorderRadius.circular(widget.bordure))),
      ),
    );
  }
}
