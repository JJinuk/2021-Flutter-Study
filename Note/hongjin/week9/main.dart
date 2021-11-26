import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/calcbutton.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(CalcApp());

class CalcApp extends StatefulWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void Clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                _history,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(fontSize: 24),
                    color: Color(0xFF545F61)),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                _expression,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(fontSize: 48), color: Colors.white),
              ),
              alignment: Alignment(1, 1),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(
                  text: 'AC',
                  fillColor: 0xFF6C807F,
                  textSize: 20,
                  callback: allClear,
                ),
                calcbutton(
                  text: 'C',
                  fillColor: 0xFF6C807F,
                  callback: Clear,
                ),
                calcbutton(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
                calcbutton(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(
                  text: '7',
                  callback: numClick,
                ),
                calcbutton(
                  text: '8',
                  callback: numClick,
                ),
                calcbutton(
                  text: '9',
                  callback: numClick,
                ),
                calcbutton(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 24,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(
                  text: '4',
                  callback: numClick,
                ),
                calcbutton(
                  text: '5',
                  callback: numClick,
                ),
                calcbutton(
                  text: '6',
                  callback: numClick,
                ),
                calcbutton(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 38,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(
                  text: '1',
                  callback: numClick,
                ),
                calcbutton(
                  text: '2',
                  callback: numClick,
                ),
                calcbutton(
                  text: '3',
                  callback: numClick,
                ),
                calcbutton(
                  text: '+',
                  callback: numClick,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton(
                  text: '.',
                  callback: numClick,
                ),
                calcbutton(
                  text: '0',
                  callback: numClick,
                ),
                calcbutton(
                  text: '00',
                  textSize: 24,
                  callback: numClick,
                ),
                calcbutton(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: evaluate,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
