import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Hello World',
        style: TextStyle(
            fontSize: 50,
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
            // backgroundColor: Colors.indigo,
            decoration: TextDecoration.combine([
              TextDecoration.underline,
              TextDecoration.overline,
            ]),
            decorationThickness: 2.0,
            decorationColor: Colors.pinkAccent,
            decorationStyle: TextDecorationStyle.wavy,
            letterSpacing: 2.0,
            wordSpacing: 24.0,
            shadows: [
              Shadow(
                color: Colors.red,
                blurRadius: 5.0,
                offset: Offset(4, 1),
              )
            ],
            ),
      ),
    ));
  }
}
