## 5주차 (캐릭터 카드 페이지 만들기)

```dart
// 플러터 머테리얼 파일 임포트
import 'flutter/material.dart';

// main함수가 runApp()을 호출함
// runApp(widget), MyApp = 커스텀함수임
// 함수명은 소문자로 시작, 클래스는 대문자로 시작, runApp(), MyApp()
void main() => runApp(MyApp());

// 최상위 위젯인 MyApp()은 프로젝트의 뼈대를 구성하는 위젯이라 상태변화가 없는 정적인, stateless 위젯이어야한다.
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // 실질적으로 모든 위젯을 감싸는 material widget 반환
        return MaterialApp(
            title: "First app",
            theme: ThemeData(
            	primarySwatch:Colors.blue
            ), // ThemeDate
            // 플러터는 주석으로 위젯의 끝을 알려줌
            home: MyHomePage(),
        ); // MaterialApp
    }
}

class MyHomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold( // 앱화면에 다양한 요소들을 배치해주는 위젯
        	appBar: AppBar(
            	title: Text("BRANDO"),
                centerTitle: true,
                backgroundColor: Colors.redAccent,
                elevation: 0.0, // 앱바 밑에 있는 섀도우 높이
            ), // AppBar
            body: Center(
                child: Column(
                    // 자식 widget들을 중앙 정렬
                    // mainAxisAlignment: MainAxisAlignment.center,
                	children: <Widget>[
                        Text("HELLO1"),
                        Text("HELLO2"),
                        Text("HELLO3"),
                    ] // <Widget>[]
                ), // Column
            ), // Center
        ); // Scaffold
    }
}
```


### 캐릭터 카드 페이지

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false, // 우측 상단의 debug 배너 삭제
            title: "BRANDO",
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
            	title: Text("BRANDO CARD"),
                backgroundColor: Colors.amber[700],
                elevation: 0.0,
            ), //AppBar
            body: Padding(
            	padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                	children: <Widget>[
                        Center(
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/flying.gif'),
                                radius: 60.0,
                            ), // CircleAvatar
                            ), // Center
                        Divider(
                            height: 60.0,
                            color: Colors.grey[850],
                            thickness: 0.5,
                            endIndent: 30.0,
                        ), // Divider
                        Text("NAME",
                            style: TextStyle(
                            	color:Colors.white,
                                letterSpacing: 2.0,
                            	), // TextStyle
                            ),//Text
                        SizedBox(
                        	height: 10.0,
                        ), // SizedBox
                        Text("BRANDO", 
                            style: TextStyle(
                            	color: Colors.white,
                                letterSpacing: 2.0,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold
                            	), // TextStyle
                            ), //Text
                        SizedBox(
                        	height: 30.0,
                        ),
                        Text("BRANDO POWER LEVEL",
                            style: TextStyle(
                            	color:Colors.white,
                                letterSpacing: 2.0,
                            	), // TextStyle
                            ),//Text
                        SizedBox(
                        	height: 10.0,
                        ), // SizedBox
                        Text("14", 
                            style: TextStyle(
                            	color: Colors.white,
                                letterSpacing: 2.0,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold
                            	), // TextStyle
                            ), //Text
                        SizedBox(
                            height: 30.0,
                        ),
                        Row(
                        	children: <Widget>[
                                Icon(Icons.check_circle_outline),
                                SizedBox(
                                	width: 10.0,
                                ),
                                Text("using lightsaber",
                                    style:TextStyle(
                                    	fontSize: 16.0,
                                        letterSpacing: 1.0,
                                    ),//TextStyle
                                    ), //Text
                            ], // <Widget>[]
                        ), // Row
                        Row(
                        	children: <Widget>[
                                Icon(Icons.check_circle_outline),
                                SizedBox(
                                	width: 10.0,
                                ),
                                Text("face hero tattoo",
                                    style:TextStyle(
                                    	fontSize: 16.0,
                                        letterSpacing: 1.0,
                                    ),//TextStyle
                                    ), //Text
                            ], // <Widget>[]
                        ), // Row
                        Row(
                        	children: <Widget>[
                                Icon(Icons.check_circle_outline),
                                SizedBox(
                                	width: 10.0,
                                ),
                                Text("fire flames",
                                    style:TextStyle(
                                    	fontSize: 16.0,
                                        letterSpacing: 1.0,
                                    ),//TextStyle
                                    ), //Text
                            ], // <Widget>[]
                        ), // Row
                        Center(
                        	child: CircleAvatar(
                            	backgroundImage: AssetImage("assets/bbanto.png"),
                                radius: 40.0,
                                backgroundColor: Colors.amber[800],
                            ), // CircleAvatar
                        ), // Center
                    ], // <Widget>[]
                ), // Column
            ), //Padding
        ); // Scaffold
    }
}
```

### Import image

`assets`라는 폴더 만들어주고 안에다가 이미지파일들 저장해준다.  
`pubspec.yaml`에서 assets 부분 주석 해제하고 방금 저장한 이미지파일들의 경로로 바꾸어준다.

```yaml
assets:
	- images/img1.jpeg
	- images/img2.jpeg
```

### 모든 위젯은 클래스로 생성된 인스턴스였음

```dart
// 클래스명은 대문자로 시작
// 객체
class Person {
    String name;
    int age;
    String sex;
    
    // 인스턴스가 생성될 때 한번 호출됨
    // 중괄호로 인수들을 묶어주면 원하는 인수만 입력받아서 인스턴스 생성 가능
    Person({String name, int age, String sex}){
        this.name = name;
        this.age = age;
        this.sex = sex;
    }
}

int addNumber(int num1, int num2){
    return num1 + num2; 
}

void main() {
    // Person p1 = new Person();
    // 생성자 함수의 인수에 맞춰서 호출해줘야함
    Person p1 = new Person("son", 24, "male");
    Person p2 = new Person(name: "zz");

    print(p1);
    print(p2);
    
    print(addNumber(3, 4));
}

```



