import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        home: CalculatorNeuApp());
  }
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class CalculatorNeuApp extends StatefulWidget {
  @override
  _CalculatorNeuAppState createState() => _CalculatorNeuAppState();
}

class _CalculatorNeuAppState extends State<CalculatorNeuApp> {
  @override
  Widget build(BuildContext context) {
    bool darkMode = false;
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: Container(
          child: Center(
            child: NeuContainer(
                // padding : const EdgeInsets.all(18)
                // child : Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     onTap : (){
                //       setState((){
                //       darkMode ? darkMode = false : darkMode = true;
                //     });
                //     }

                //   },

                //   ],)
                ),
          ),
        ),
      ),
    );
  }
}

class NeuContainer extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  NeuContainer(
      {this.darkMode = false,
      required this.child,
      required this.borderRadius,
      required this.padding});
  @override
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = widget.darkMode;
    return Listener(
        onPointerDown: _onPointerDown,
        onPointerUp: _onPointerUp,
        child: Container(
          padding: widget.padding,
          decoration: BoxDecoration(
              color: darkMode ? colorDark : colorLight,
              borderRadius: BorderRadius.circular(10),
              boxShadow: _isPressed
                  ? null
                  : [
                      BoxShadow(
                        color: darkMode
                            ? Colors.black54
                            : Colors.blueGrey.shade200,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color:
                            darkMode ? Colors.blueGrey.shade700 : Colors.white,
                        offset: const Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      )
                    ]),
          child: const Icon(Icons.android, size: 100),
        ));
  }
}
