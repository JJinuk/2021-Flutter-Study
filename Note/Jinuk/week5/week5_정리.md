### 캐릭터 카드 페이지 만들기

elevation : 높이, 수치로 값을 지정해준다.(소숫점까지 근소한 수치로 조정 가능)

### Padding widget

어떤 특정지점으로부터 사용하고자 하는 위젯이 떨어져야 할 거리를 지정할 때 사용

Inset : 무언가를 삽입, 끼워넣다.

LTRB : Left, Top, Right, Bottom

Column : 위젯을 세로로 배치

mainAxisAlignment : 세로축으로 상,중,하단 정렬할 때 사용 

center widget : 항상 위젯들이 화면 정중앙 배치 ㄴㄴ column widget과 center widget이 만나면 center widget은 column widget의 자식들에 대한 세로축 위치에 관여하지 않고 현재 column widget의 자식 위젯 세로축 높이에 자동적으로 fix된다.

column widget을 가로축 상으로 정중앙에 위치시키려면 center widget을 사용하고 세로축으로 정중앙에 위치시키려면 center widget 내에서 mainAxisAlignment 속성 사용하면 된다.

```dart
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
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
          children: <Widget>[
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
```

sizedbox : 두 텍스트 사이에 가로 세로 사이즈를 마음대로 조절가능한 박스를 넣어 가로 세로 간격을 조절한다.

```dart
SizedBox(height: 10.0, ),
```

crossAxisAlignment : 가로축 정렬(column widget 내의 제일 상단에 위치하여 사용)

```dart
child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
```

CircleAvatar()

```dart
Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
```

Divider(height: 60.0) : Divider 위와 아래의 간격이 60이라는 뜻 

위의 이미지에서 30px, 아래 Name에서 30px 떨어져있음
