import 'package:flutter/material.dart';
import 'widgets/calc_button.dart';

void main() {
  runApp(calcApp());
}

class calcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Center(
          child: Row(
            children: <Widget>[
              CalcButton(
                text: 'AC',
                fillColor: 0xFF6C807F
                ),
              CalcButton(
                text: 'C',
                fillColor: 0xFF6C807F
                ),
              CalcButton(
                text: '%',
                fillColor: 0xFF6C807F
                ),
              CalcButton(
                text: '/',
                fillColor: 0xFF6C807F
                ),
            ]),
        ),
        ),
      );
  }
}
