//Rows- Displaying 3 widgets in a row like a table

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
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Color.fromARGB(255, 253, 85, 141),
          padding: EdgeInsets.all(30.0),
          child: Text('Roll No'),
        ),
        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(30.0),
          child: Text('Name'),
        ),
        Container(
          color: Color.fromARGB(255, 218, 96, 239),
          padding: EdgeInsets.all(30.0),
          child: Text('Hobies'),
        )
      ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('Submit'),
      backgroundColor: Colors.deepOrange[800],
    ),
  );
  }
}
