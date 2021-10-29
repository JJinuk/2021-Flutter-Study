# Flutter - week4



## 5강 Widget
- 독립적으로 실행되는 작은 프로그램
- 그래픽이나 데이터 요소를 처리하는 함수를 가지고 있음

### 1. Flutter 상에서의 위젯이란?
- 모든 것들이 위젯
- UI를 만들고 구성하는 모든 기본 단위 요소
- 눈에 보이지 않는 요소들가지 위젯
=> 직관적으로 코딩 가능

### 2. Stateless vs Stateful
- Stateful => Value 값을 지속적으로 추적 보존
- Stateless => 이전 상호작용의 어떠한 값도 저장x

Widget의 종류
1. Stateless Widget(상태가 없는 정적인 위젯)
   - 스크린상에 존재만 할 뿐 아무것도 하지x
   - 어떠한 실시간 데이터도 저장x
   - 어떤 변화(모양, 상태)를 유발시키는 value값을 가지지x
2. Stateful Widget(계속 움직임이나 변화가 있는 위젯)
   - 사용자의 interaction에 따라 모양이 바뀜
   - 데이터를 받게 되었을 때 모양이 바뀜
3. Ingerited Widget

### 3. Widget tree
- Widget들은 tree 구조로 정리 가능
- 한 Widget 내에 얼마든지 다른 widget들 포함 가능
- Widget은 부모 위젯과 자식 위젯으로 구성
- Parent widget을 widget container라고 부르기도 함

### Summary
1. Flutter의 모든 것은 Widget
2. 위젯이 전혀 변화가 없으면 steless widgets
3. 위젯의 모양이나 상태가 바뀐다면 stateful widgets
4. 위젯은 트리구조로 구성되어 있다



## 6-8강 Flutter 앱 만들기
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ), // ThemeData
    home: MyHomePage(),
    );  // MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
      ),  // AppBar
      body: Center(
        child: Column(
          children: [
            Text('Hello'), 
            Text('Hello'), 
            Text('Hello')
          ],
        )  // Column
      ),  // Center
    );  // Scaffold
  }
}
```



## [Reference]  
[플러터 강좌 순한맛 - YouTube](https://www.youtube.com/watch?v=jI4kqLdqXic&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=5)

