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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController controller = ScrollController();

  List<Widget> layoutChildren(double boxSide) {
    return [
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Text('Box1',style: TextStyle(color: Colors.indigo,fontSize: 50),),
      ),
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        child: Text('Box2',style: TextStyle(color: Colors.indigo,fontSize: 50),),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxSide = size.shortestSide - 50;
    return Scaffold(
      body: Center(child: Builder(builder: (context) {
        if (orientation.index == Orientation.landscape.index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: layoutChildren(boxSide),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: layoutChildren(boxSide),
          );
        }
      }),
      ),
    );
  }
}

