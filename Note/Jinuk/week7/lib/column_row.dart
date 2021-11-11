import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primaryColor: Colors.blue),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            SizedBox(
              // width: 30.0,
              height: 30.0,
            ),
            Container(
              // width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              // width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
}




      // child: Center(
          //     child: FlatButton(
          //   onPressed: () {},
          //   child: Text('Flat button'),
          //   color: Colors.white,
          // )),