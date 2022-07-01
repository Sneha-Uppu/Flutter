//Adding image from browser

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
        image: NetworkImage('https://images.unsplash.com/photo-1656097802010-19085c0f2204?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),
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
