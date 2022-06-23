// 1. Create a new Flutter app and output an AppBar and some text below it.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment')
        ),
        body: Center(
          child: Text('This is the first assignment'),
      )),
    );
  }
}
