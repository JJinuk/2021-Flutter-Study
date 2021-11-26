import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
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
              //onPressed: (){
              //  print('text button');
              // },
              onLongPress: (){
                print('text button');
              },
              child: Text(
                'Text button',
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
              ), onPressed: () {  },
            ),
            ElevatedButton(
                onPressed: (){
                  print('Elevated button');
                },
                child: Text('Elevated button'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,  //elevatedbutton의 색
                  shape: RoundedRectangleBorder(     //버튼의 모양
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
                  //side: BorderSide(
                  //  color: Colors.black87,
                  //  width: 2.0
                  // )
                ),
            ),
            TextButton.icon(
                onPressed: (){
                  print('Icon button');
                },
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
            TextButton.icon(
              onPressed: (){
                print('Icon button');
              },
              icon: Icon(
                Icons.home,
                size: 30.0,
                //color: Colors.black87,
              ),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                  primary: Colors.purple,
              ),
            ),
            ElevatedButton.icon(
              onPressed: (){
                print('Go to Home');
              },
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
              ),
            ),
            OutlinedButton.icon(
              onPressed: (){
                print('Outlined icon button');
              },
              icon: Icon(Icons.home),
              label: Text('Go to home'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onSurface: Colors.pink
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                    onPressed: (){},
                    child: Text("TextButton"),
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("ElevatedButton"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
