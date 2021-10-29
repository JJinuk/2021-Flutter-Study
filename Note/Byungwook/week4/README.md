## 4주차

### stateless widget

: 상태의 변화가 없는 위젯. ex) 이미지, 텍스트와 같은

### stateful widget

:  사용자의 상호작용에 따라 모양이나 형태가 바뀌는 위젯. ex) 입력칸, 체크박스 등등

### widget tree

위젯들을 트리구조로 정리할 수 있음.  
위젯은 부모자식 관계를 가지며 부모 위젯을 widget container라고도 부름  

- Flutter는 모든것이 위젯으로 이루어져있음
- 위젯은 stateless, stateful 위젯으로 나뉘어짐
- 위젯은 트리구조로 구성되어있음



`pubspec.yaml`  
프로젝트의 메타 데이터를 정의하고 관리하는 곳  
버전, 다트의 버전, 사용환경 등

`lib`  
main.dart가 들어있는 폴더이며 대부분 이 폴더에서 코딩 작업을 하게된다.

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
            	title: Text("hi flutter"),
            ), // AppBar
            body: Center(
            	child: Column(
                	children: <Widget>[
                        Text("Hello"),
                        Text("Hello2"),
                        Text("Hello3")
                    ], // <Widget>[]
                ), // Column
            ), // Center
        ); // Scaffold
    }
}
```
