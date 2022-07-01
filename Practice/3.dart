//Adding images from system

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('Practice App'),
      centerTitle: true,
      backgroundColor: Colors.deepOrange[800],
    ),
    body: Center(
      child: Image(
        image: AssetImage('images/pic1.jpg'),
      )
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('Like'),
      backgroundColor: Colors.deepOrange[800],
    ),
  );
  }
}
