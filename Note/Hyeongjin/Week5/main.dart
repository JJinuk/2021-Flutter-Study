import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//stl -> statelessWidget생성, class 이름 지정
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Squirtle',
      home: Grade(),
    );
  }
}

//MyHomePage 생성
class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text('Squirtle'),
        centerTitle: true, //가운데 정렬
        backgroundColor: Colors.blue[400], //배경 색깔
        elevation: 0.0, //높이 0.0이면 떠있는 효과 없이 flat한 효과
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/squirtle.png'),
                backgroundColor: Colors.blue[600],
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
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
              'Squirtle',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
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
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Tackle',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Water Gun',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Cute',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/squirtle.png'),
                radius: 40.0,
                backgroundColor: Colors.blue[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
