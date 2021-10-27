import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
          //앱에서 사용할 기본 색상
          primarySwatch: Colors.blue),
      //위에 ThemeData : Closing Label로 widget 자동으로 구분
      //home : 앱이 실행 되었을 때 가장 먼저 보여지는 경로
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is text'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello')],
        ),
      ),
    );
  }
}
