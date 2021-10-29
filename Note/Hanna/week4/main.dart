import 'package:flutter/material.dart';
// flutter 프레임워크를 사용하기 위해 flutter material 라이브러리 import

void main() =>
    runApp(MyApp()); // main 함수가 argument로 MyApp 위젯을 가지고 있는 함수 runApp 호출

class MyApp extends StatelessWidget {
  // Stateless인 MyApp 커스텀 위젯 생성

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 모든 커스텀 위젯은 또 다른 위젯을 return하는 build 함수를 가진다

    return MaterialApp(
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.blue), // 앱의 기본적인 테마를 지정

      home: MyHomePage(), // 가장 먼저 화면에 보여주는 경로
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),
      body: Center(
        child: Column(
          children: [Text('Hello'), Text('Hello'), Text('Hello')],
        ), // 위젯들을 세로로 배치
      ),
    );
  }
}
