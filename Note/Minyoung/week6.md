# Flutter - week6



## 14강 앱바(App bar) 메뉴 아이콘

**App bar icon button**

- leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
- actions: 복수의 아이콘 버튼 등을 위젯 오른쪽에 배치할 때
- onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의

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
    );	// MaterialApp
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu buttion is clicked');
          },
        ),  // IconButton
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart buttion is clicked');
            },
          ),  // IconButton
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search buttion is clicked');
            },
          ),  // IconButton
        ],
      ),  // AppBar
    );  // Scaffold
  }
}
```



## 15-16강 Drawer 메뉴 만들기

**Drawer menu**
- list: 세로 방향으로 여러 종류로 된 정보를 나타냄
- listview widget: 복수의 위젯을 나열하는 위젯 리스트가 children 속성을 통해 호출됨
- List tile
  - 위젯 리스트의 한 줄을 list tile이라고 부름
  -  각각의 리스트 타일 내에서는 각 요소들의 배치 필요(icon, main title, sub title, button 등)
  - 플러터에서는 편하게 배치할 수 있도록 List Tile 위젯 제공

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
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart buttion is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search buttion is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/rabbit.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/tigger.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('RABBIT'),
              accountEmail: Text('rabbit@animal.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text('Settings'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
```



## 17강 BuildContext 이해

**BuildContext**
1. "widget tree에서 현재 widget의 위치를 알 수 있는 정보"
   - flutter에서 모든 위젯은 빌드 메소드. 즉, 함수를 가지고 있음 => 계층 구조
   - build method는 Scaffold Widget을 리턴
   - 이때 widget tree에서 어디에 위치하는 지에 대한 정보를 가지고 있는 context를 넣어서 리턴



2. "이 BuildContext는 statelss 위젯이나 state 빌드 메서드에 의해서 리턴된 위젯의 부모가 된다"
   - build method에 의해서 리턴된 Scaffold Widget은 그 부모의 BuildContext 타입의 context를 그대로 물려받음
   - Scaffold Widget 밑에서 build method로 무언가 위젯을 리턴하면 그 위젯은 부모인 Scaffod 위젯의 진짜 context를 가진 위젯을 물려받음



## 18강 스낵바(Snack bar)와 BuildContext

**Scaffold.of(context) method **
  : "현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환"

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
    ); // MaterialApp
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),  // AppBar
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: FlatButton(
              child: Text(
                'Show me',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Hello'),
                ));  // SnackBar
              },
            ),  // FlatButton
          );  // Center
        },
      ),  // Builder
    );  // Scaffold
  }
}
```



## 19강 Snack bar and Toast message

### 빌더 위젯없이 Snack bar 만들기
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
    ); // MaterialApp
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),  // AppBar
      body: MySnackBar(),
    );  // Scaffold
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Hello',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white
              ),  // TextStyle
              ),  // Text
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ),  // SnackBar
          );
        }
      ),  // RaisedButton
    );  // Center
  }
}
```

### Toast message 구현하기
**Toast message**
  : 사용자에게 짧은 메시지 형식으로 정보를 전달하는 팝업

```dart
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    ); // MaterialApp
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),  // AppBar
      body: Center(
        child: FlatButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
          color: Colors.blue,
        ),  // FlatButton
      ),  // Center
    );  // Scaffold
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Flutter',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
```



## [Reference]

[플러터 강좌 순한맛 - YouTube](https://www.youtube.com/watch?v=ze0t5gWKBvE&list=PLQt_pzi-LLfpcRFhWMywTePfZ2aPapvyl&index=14)
