// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(builder: (BuildContext ctx) {
          return Center(
            child: TextButton(
              // ignore: prefer_const_constructors
              child: Text(
                'Show me',
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.red,
              onPressed: () {
                // ignore: deprecated_member_use
                Scaffold.of(context).showSnackBar(const SnackBar(
                  content: Text('Hellow'),
                ));
              },
            ),
          );
        }));
  }
}
