//ID CARD (Practice 5 - VS Code)

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Details(),
));

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/image.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Row(
              children: [
              Text(
              'Name:   ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, 
                fontSize: 20.0
                ),
              ),
            Text(
              'Sneha Uppu',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0, 
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
              ),
              ],
            ),
            
            SizedBox(height: 30.0,),

            Row(
              children: [
                Text(
              'Roll No: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, 
                fontSize: 20.0
                ),
              ),
              Text(
              '320114110056',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0, 
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
              ),
              ],
            ),
            
            SizedBox(height: 30.0,),

            Row(
              children: [
                Text(
              'Branch:  ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, 
                fontSize: 20.0
                ),
              ),
            SizedBox(height: 10.0,),
            Text(
              'CSE',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0, 
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
              ),
              ],
            ),

            SizedBox(height: 30.0,),

            Row(
              children: [
                Text(
              'Year:      ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0, 
                fontSize: 20.0
                ),
              ),
            SizedBox(height: 10.0,),
            Text(
              '2nd Year',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0, 
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
              ),
              ],
            ),
            
            SizedBox(height: 30.0,),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                Text(
                  'uppusneha14@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            ),

            SizedBox(height: 30.0,),

            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                Text(
                  '6301673028',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 17.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            )

        ]),
        ),
    );
  }
}
