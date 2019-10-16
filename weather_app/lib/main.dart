import 'package:flutter/material.dart';
import 'package:weather_app/screens/Mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size(null, 75),
        //   child: Container(
        //     width: double.infinity,
        //     height: 75,
        //     child: Center(child: Text(DateTime.now().toString())),
        //   ),
        // ),
        body: Mainscreen(),
      ),
    );
  }
}
