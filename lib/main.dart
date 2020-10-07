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

// body: Center(
//           child: Container(

//               padding: EdgeInsets.all(8.0),
//               // constraints: BoxConstraints.expand(),
//               width: 200,
//               height: 200,
//               alignment: Alignment.center,
//               // transform: Matrix4.rotationZ(0.5),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 border: Border.all(
//                   color: Colors.blueGrey,
//                   width: 5.0,
//                   style: BorderStyle.solid,
//                 ),
//                 // borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 4.0,
//                     spreadRadius: 3.0,
//                     )
//                 ],
//                 gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: [
//                     Colors.blue,
//                     Colors.lightBlue[200]
//                   ]),
//                   shape: BoxShape.circle
//               ),
//               child: Text(
//                 'Flutter Container',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ))),
