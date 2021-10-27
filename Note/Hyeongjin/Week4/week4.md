## Week4
### Widget
1) Widget?
  - 독립적으로 실행되는 작은 프로그램
  - 바탕화면 등에서 날씨나 뉴스, 생활정보
  - 그래픽이나 데이터 요소를 처리하는 함수 보유

2) What is Widget in Flutter?
  - UI를 만들고 구성하는 모든 기본단위 요소 (image, text, icon, text field,button..)
  - 눈에 보이지 않는 레이아웃 요소(padding, center, column..)
  - 위를 구성 하는 App도 Widget이라고 할 수 있음!

### Type of Widget
1) Stateless Widgets
  - Value 값을 지속적으로 추적 보존
  - 상태가 없는 정적인 위젯
  - 스크린 상에 존재만 할 뿐 아무것도 저장하지 않음
  - 어떠한 실시간 데이터도 저장하지 않음
  - 모양이나 상태의 변화를 유발하는 Value를 가지지 않는다
   
2) Stateful Widgets
  - 이전 상호작용의 어떤 값도 저장하지 않음
  - 계속 움직임이나 변화가 있는 동적 위젯
  - 사용자와의 interaction이나 data input에 따라 모양이 바뀜
    
3) Flutter Widget Tree
  - Widget 들은 tree 구조로 정리 될 수 있음
  - 부모 위젯과 자식 위젯으로 구성
  - parent widget을 widget container라고 부르기도 함

### Flutter Basics

1) Sdk에 포함된 widget을 사용하기 위해 Flutter Material Liabrary 를 import
```
import 'package:flutter/material.dart';
```

2) main() 함수가 runApp() 호출
```
void main() => runApp(MyApp());
```
  - runApp은 Widget을 argument로 가짐

3) 함수/클래스 이름
  - 함수는 소문자 시작(runApp())
  - 클래스는 대문자 시작(MyApp())
  - 함수/클래스 명의 새로운단어 첫 글자는 대문자 시작

4) MaterialApp
  - App 전체를 감싸는 Widget
```
MaterialApp(
      title: 'First App',
      theme: ThemeData(
          primarySwatch: Colors.blue),
      //위에 ThemeData : Closing Label로 widget 자동으로 구분
      //home : 앱이 실행 되었을 때 가장 먼저 보여지는 경로
      home: MyHomePage(),
    );
```
   - title : 앱의 타이틀(보여지는 요소가 x)
   - theme : 앱의 테마, primarySwatch를 통해 기본색상 설정
   - home : 앱이 실행되고 가장 먼저 보여지는 경로
    
5) MyHomePage()
```
Scaffold(
      appBar: AppBar(
        //화면에 출력된다는 점에서 차이가 있음
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
```
  - Scaffold : 앱 화면에 다양한 요소를 배치하고 그릴수 있도록 하는 역할
      1) appBar : app의 상단 부분
        - MaterialApp의 title과 달리 ''를 사용
        - appBar의 title은 직접 화면에 보여지는 내용이기때문
      2) body :
        - Center : 가운데 정렬
        - Column : 세로로 배치
        - [] : Center, Column 특성을 가진 요소의 배열 
