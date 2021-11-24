import 'package:flutter/material.dart';
import 'widgets/calc_button.dart';

void main() {
  runApp(calcApp());
}

class calcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Center(
          child: CalcButton(
            text: '1',
            ),
        ),
      ),
    );
  }
}
