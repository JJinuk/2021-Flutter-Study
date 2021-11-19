# Flutter - week8



## 24강 콜렉션과 제네릭

### String interpolation
**$변수명**
- Interpolation: 보간법
- 문자열을 출력하거나 선언할 때 다른 변수를 끼워넣는 것

### Collection / Generic
- **Collection**: 데이터들을 모아서 가지고 있는 자료구조
- **Generic**: Collection이 가지고 있는 데이터들의 데이터 타입을 지정
- dart는 타입 추론이 가능해 타입 지정이 필수는 아니지만, <br/>코드의 안정성을 위해 가급적 구체적인 타입 지정을 하는 것을 추천

- list --> fixed-length list / growable list
```dart
var number = new List(5);
// 괄호 안에 숫자 넣으면 fixed-length list
// 숫자 생략 시 growable list

List<dynamic> number = new List();
// <dynamic>  <- generic
// < > 안에 있는 자료형만 가질 수 있음
```



## 25강 제네릭스

```dart
// 기존 코드(개별 타입 지정)
class Circle {}
class Square {}
class SquareSlot {
  insert(Square squareSlot) {
  }
}
class CircleSlot {
  insert(Circle CircleSlot) {
  }
}

void main() {
  var circleSlot = new CircleSlot();
  circleSlot.insert(new Circle());
  
  var squareSlot = new SqaureSlot();
  sqaureSlot.insert(new Circle()); // error 발생
}

// Generic 기법 사용
class Circle {}
class Square {}
class Slot <T> {
  insert(T shape) {
  }
}

void main() {
  var circleSlot = new Slot<Circle>();
  circleSlot.insert(new Circle());
  
  var squareSlot = new Slot<Sqaure>();
  sqaureSlot.insert(new Sqaure());
}
```



## 26강 플러터 2.0 스낵바 & ScaffoldMessenger

- 이전 버전: Scaffold.of(context) method => 복잡, 치명적 단점
- ScaffoldMessenger 위젯 도입 => 간단하게 스낵바 구현 가능
- 라우트가 바뀌어도 현재의 스캐폴드 위에서 스낵바를 보여줌
- 이제 스낵바가 더이상 스캐폴드에 의해서 관리되는 것이 아니라, <br/>위젯트리 상에서 최상위의 스캐폴드 메신저에 의해서 관리됨

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Like a new Snack bar!'),
              duration: Duration(seconds: 5),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Go to the second page'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
          child: Text(
            '"좋아요"가 추가되었습니다.',
            style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
          ),
        ));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '"좋아요"를 취소하시겠습니까?',
                  style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('"좋아요"가 취소되었습니다.'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  child: Text('취소하기'),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
```



## 27강 플러터 2.0 버튼(Elevated, Text, Outlined)

Buttons
- RaisedButton → ElevatedButton
- FlatButton → TextButton
- OutlineButton → OutlinedButton

ButtonBar Widget
- 버튼들을 가로방향으로 끝 정렬
- 공간 부족 시 세로 방향으로 자동 정렬

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              // onPressed: () {
              //   print('text button');
              // },
              onLongPress: () {
                print('text button');
              },
              child: Text(
                'Text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
                backgroundColor: Colors.blue
              ),
            ),
            ElevatedButton(
              onPressed: (){
                print('Elevated button');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                elevation: 0.0
              ),
            ),
            OutlinedButton(
              onPressed: (){
                print('Outlined button');
              },
              child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(
                //   color: Colors.black87,
                //   width: 2.0
                // )
              ),
            ),
            TextButton.icon(
              onPressed: (){
                print('Text Icon button');
              } ,
              icon: Icon(
                Icons.home,
                size: 30.0,
                //color: Colors.black87,
              ), 
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                primary: Colors.purple
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 20.0,
              ), 
              label: Text('Go to home'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onSurface: Colors.pink
                //minimumSize: Size(200, 50)
              ),
            ),
            OutlinedButton.icon(
              onPressed: (){
                print('Outlined Icon button');
              } ,
              icon: Icon(Icons.home), 
              label: Text('Go to home'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: Text('TextButton')
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('ElevatedButton')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
```



## [Reference]

[플러터 강좌 순한맛 - YouTube](https://www.youtube.com/watch?v=6AUuEP_n38Y&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=24)