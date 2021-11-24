import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;

  const CalcButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      this.textColor = 0xFFFFFFFF,
      this.textSize = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: fillColor != null ? Color(fillColor) : null,

      width: 65,
      height: 65,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: textSize,
              color: Color(textColor),
            ),
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
