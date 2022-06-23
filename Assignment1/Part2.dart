// 2. Adding a button to change text upon clicking

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _mainText='This is the first assignment';

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment')
        ),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _mainText = 'This is the second part';
                });
              },
              child:
                Text('Click Me'),
            ),
            Text(_mainText)
          ],
        )),
    );
  }
}
