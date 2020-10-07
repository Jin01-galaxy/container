import 'package:flutter/gestures.dart';
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
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint('Hello World');
    };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RichText(
            text: TextSpan(
                text: "Share",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                      text: 'Register',
                      style: TextStyle(color: Colors.red),
                      recognizer: _gestureRecognizer),
                ]),
                //   WidgetSpan(child: Icon(Icons.share))
                // ]
          ),
        )
      )
    );
  }
}
