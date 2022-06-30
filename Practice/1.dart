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
      child: Text(
        'FLUTTER',
         style: TextStyle( 
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
        ),
        ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('Like'),
      backgroundColor: Colors.deepPurple[400],
    ),
  );
  }
}
