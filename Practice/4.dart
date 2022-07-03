//A Blog post with image which counts the number of likes(Practice 3 - VS Code)

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _likes = 0;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('My Blog'),
      centerTitle: true,
      backgroundColor: Colors.deepOrange[800],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(() {
          _likes += 1;
        });
      },
      child: Icon(Icons.thumb_up),
      backgroundColor: Colors.deepOrange[800],
    ),
    
    body: Column(
      children: [
        Row(
          children: [
            CircleAvatar(
                  backgroundImage: AssetImage('images/pic3.jpg'),
                  radius: 25.0,
                ),
            Text(
              '    Sui_Generis',
               style: TextStyle(
                color: Colors.grey[700],
                letterSpacing: 2.0, 
                fontSize: 20.0
                ),
              ),
          ],    
       ),
            SizedBox(height: 10.0,),
        Image(
          image: AssetImage('images/pic1.jpg'),
        ),
        SizedBox(height: 20.0,),
        Row(
          children: [
            Text(
              '   You got ',
              style: TextStyle(
                fontSize: 20.0
                ),
              ),
            Text(
              '$_likes ',
              style: TextStyle(
                fontSize: 20.0
                ),
              ),
            Text(
              'likes',
              style: TextStyle(
                fontSize: 20.0
                ),
              ),
          ],
        ),
      ],
    ),
  );
  }
}
