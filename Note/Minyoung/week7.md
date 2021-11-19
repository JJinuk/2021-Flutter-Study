# Flutter - week7



## 20강 컨테이너 위젯

- 컨테이너 위젯은 무조건 페이지 내에서 최대한의 공간을 차지하려고 한다.
  - "Containers with no children try to be as big as possible"
  : child가 없을 경우, 컨테이너 위젯은 최대한의 공간을 차지한다.
  - "Containers with children size themselves to their children"
  : child가 있을 경우, 컨테이너는 그 child의 크기로 줄어든다.
- 컨테이너는 오직 하나만의 child를 가짐
- SafeArea Widget: 컨텐츠가 화면 밖으로 빠져나가지 않게 경계를 지정
- margin: 위젯 바깥쪽 간격 조절
  : 컨테이너가 스크린의 가장자리에서 일정간격을 가짐
- padding: 위젯 안쪽 간격 조절
  : 그 컨테이너가 포함하고 있는 요소가 컨테이너의 가장자리에서 일정간격을 가짐

```dart
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10
          ),
          padding: EdgeInsets.all(40),
          child: Text('Hello'),
        ),
      ),
    );
  }
}
```



## 21강 컬럼, 로우 위젯

**Column** 위젯 - 컨테이너들이 세로로 정렬
**Row** 위젯 - 컨테이너들이 가로로 정렬

- mainAxisSize: MainAxisSize.min: 중앙에 최소한의 영역으로 위치
- mainAxisAlignment: MainAxisAlignment.spaceEvenly: 컨테이너가 같은 간격으로 정렬
- mainAxisAlignment: MainAxisAlignment.spaceEvenly: 컨테이너가 같은 간격으로 상중하에 정렬
- verticalDirection: VerticalDirection.up: 밑에서부터 123 정렬
- verticalDirection: VerticalDirection.down: 위에서부터 123정렬

- crosssAxisAlignment: CrossAxisAlignment.end: 가로축 길이 끝에 맞춰서 정렬
- width: double.infinity: 오른쪽 끝에 정렬(invisible container)
- crosssAxisAlignment: CrossAxisAlignment.stretch, 컨테이너의 가로 크기 지정x : 가로 방향으로 컨테이너 채움
- SizedBox: 컨테이너 사이의 간격 지정(height, width)
```dart
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 2'),
            ),
          ],
        )
      ),
    );
  }
}
```



## 22강 네비게이터

### Route, Navigator, Stack
- Route: 스마트폰 상에서 보여지는 하나의 페이지
- Navigator
  - 모든 앱페이지들을 관리
  - 스택 자료구조형식으로 라우터 객체들을 관리
- Stack 자료구조
  - push 메소드로 자료 넣음
  - pop 메소드로 자료 빼냄



### 페이지 이동 기능 구현
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the Second page'),
          onPressed: () {
            Navigator.push(context2,
                MaterialPageRoute(builder: (context) => SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the First page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
```



## 23강 네베게이터와 pushNamed

- routes argument는 이동할 페이지들의 이름을 지정하고 생성하는 역할
- String과 WidgetBuilder가 한 쌍으로 전달되는 Map 자료형을 가져야 함

Map 자료구조
- Key : Value <= 1:1로 대응
- String : Widget builder
- Key값을 호출하면 Value가 실행됨



## [Reference]

[플러터 강좌 순한맛 - YouTube](https://www.youtube.com/watch?v=RhEzrNTSW7c&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=20)
