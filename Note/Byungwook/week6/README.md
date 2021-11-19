# week6

- `leading`: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
- `actions`: 여러개의 아이콘 버튼 등을 오른쪽에 배치할 때
- `onPressed`: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        	title: 'Appbar',
            theme: ThemeData(
            	primarySwatch: Colors.red,
            ), // ThemeData
            home: MyPage(),
        ); // MaterialApp()
    } 
}

class MyPage extends StatelessWidget {
    @ovveride
    Widget build(BuildContext context) {
        return Scaffold(
        	appBar: AppBar(
                title: Text('Appbar icon menu'),
                centerTitle: true,
                elevation: 0.0,
                leading: iconButton(
                	icon: Icon(Icons.menu),
				   onPressed: () {
                       print("menu button is clicked");
                   },
                ), // IconButton
                actions: <Widget>[
                    iconButton(
                        icon: Icon(Icons.shopping_cart),
                       onPressed: () {
                           print("Shopping button is clicked");
                        },
                	), // IconButton
                    iconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                            print("Search button is clicked");
                        },
                    ), // IconButton
                    
                ], // <Widget>[],
            ), // AppBar
        ); // Scaffold
    }
}


```

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        	title: 'Appbar',
            theme: ThemeData(
            	primarySwatch: Colors.red,
            ), // ThemeData
            home: MyPage(),
        ); // MaterialApp()
    } 
}

class MyPage extends StatelessWidget {
    @ovveride
    Widget build(BuildContext context) {
        return Scaffold(
        	appBar: AppBar(
                title: Text('Appbar icon menu'),
                centerTitle: true,
                elevation: 0.0,
                actions: <Widget>[
                    iconButton(
                        icon: Icon(Icons.shopping_cart),
                       onPressed: () {
                           print("Shopping button is clicked");
                        },
                	), // IconButton
                    iconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                            print("Search button is clicked");
                        },
                    ), // IconButton
                    
                ], // <Widget>[],
            ), // AppBar
            drawer: Drawer(
            	child: ListView(
                
                ),
            ),
        ); // Scaffold
    }
}


```



`18`

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Snack Bar',
            theme: ThemeData(
            	primarySwatch: Colors.red
            ), // ThemeData
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
	        ), // AppBar
            body: Builder(
                builder: (BuildContext ctx) {
				   return Center(
                        child: FlatButton(
                            child: Text('Show me',
                                style: TextStyle(
                                    color: Colors.white
                                ), // TextStyle
                           ), // Text
                            color: Colors.red,
                            onPressed: (){
                                Scaffold.of(ctx).showSnackBar(SnackBar(
                                    content: Text('Hellow'),
                              )); // SnackBar
                            },
                        ), // FlatButton
                    ); // Center
                }
            ) // Builder
        ); // Sacffold
    }
}
```

`Scaffold.of(context) method`  
: 현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라.  
=> `Something.of(context)`

`19`

1. 빌더 위젯없이 Snack Bar 만들기
2. Toast message 구현하기

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Snack Bar',
            theme: ThemeData(
            	primarySwatch: Colors.red
            ), // ThemeData
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
            ), // AppBar
            body: MySnackBar(),
        ); // Scaffold
    }
}

class MySnackBar extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
        	child: RaisedButton(
        		child: Text('Show me'),
                onPressed: () {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(
                        	content: Text('Hellow',
						  textAlign: TextAlign.center
                            style: TextStyle(
                            	color: Colors.white
                            ), // TextStyle
                            ), // Text
                            backgroundColor: Colors.teal,
                            duration: Duration(milliseconds:1000),
                        ), // SnackBar
				   );
                }), RaisedButton
        ) // Center
    }
}
```

```dart
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart'; // flutter toast package
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        	title: 'Toast',
            home: MyPage(),
        ); // MaterialApp
    }
}

class MyPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
            	title: Text('Toast Message'),
                centerTitle: true,
            ), // AppBar
            body: Center(
            	child: FlatButton(
                	onPressed: (){
                        flutterToast();
                    },
                    child: Text('Toast'),
                    color: Colors.blue,
                ),// FlatButton
            ), // Center
        ); // Scaffold
    }
}

void flutterToast(){
    Fluttertoast.showToast(msg: 'Flutter Toast Message',
    	gravity: ToastGravity.BOTTOM,
		backgroundColor: Colors.redAccent,
		fontSize: 20.0,
		textColor: Colors.white,
		toastLength: Toast.LENGTH_SHORT,
	);
    
}
```

flutter에서 toast message를 사용하려면 따로 패키지를 import해줘야함  
`pubspec.yaml`파일에서 `dependencies` 아래에 `fluttertoast: ^3.1.3`을 추가해준다.  
이후에 `main.dart` 상단에 `fluttertoast`패키지를 import해준다.  
