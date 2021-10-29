# Flutter - week5



## 9강 위젯정리
```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello')
            ],
          ),
      ),

    );
  }
}
```



## 10-11강 캐릭터 페이지 디자인

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ogu.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'BBANTO',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'face hero tattoo',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'fire flames',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ogu.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
```



## 12-13강 클래스와 위젯

### 프로그래밍 상에서의 클래스 / 객체 / 인스턴스
- 클래스: 객체가 가져야 하는 속성과 기능을 정의한 내용을 담고 있는 설계도 역할
- 객체: 클래스가 정의된 후 메모리상에 할당되었을 때 이를 객체라고 함
- 인스턴스: 클래스를 기반으로, 클래스가 정의하고 있는 속성과 기능을 똑같이 가지고 실제로 프로그램이 상에서 사용되는 대상

### 생성자
- 인스턴스 생성
- 인스턴스가 생성될 때 한 번만 호출됨
- arguments `{}`로 묶으면 optional로 변경 가능
- named argument: `멤버변수:`로 특정 argument 지정 가능

```dart
class Person { // 클래스 생성 <- 클래스명은 대문자로 시작
  String name;
  int age;
  String sex;
  
  // 생성자
  Person({String, name, int age, String sex}) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

int addNumber(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // Person p1 = new Person();  // 기본 생성자(생성자 지정x)
  Person p1 = new Person(age:30);
  Person p2 = new Person('Jane', 27, 'female');
  
  print(p1.age);
  print(p2.sex);
  
  addNumber(3, 4);
  print(addNumber(3, 4));
}
```



## [Reference]  

[플러터 강좌 순한맛 - YouTube](https://www.youtube.com/watch?v=gUVAUOvPm_c&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=9)
