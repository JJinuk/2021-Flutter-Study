import 'package:flutter/material.dart';
import 'package:flutter_app/ScreenA.dart';


import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/':(context)=>ScreenA(),
        '/b':(context)=>ScreenB(),
        '/c':(context)=>ScreenC(),

      },
    );

  }
  
}
