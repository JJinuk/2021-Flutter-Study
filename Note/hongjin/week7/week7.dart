import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
            Navigator.push(
                context2, MaterialPageRoute(builder: (_) => SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              RaisedButton(
                  child: Text('Go to the First page'),
                  onPressed: () {
                    Navigator.pop(ctx);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
