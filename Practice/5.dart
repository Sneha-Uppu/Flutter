//Form

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name="";
  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return  Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:height*0.04),
                Text(
                  'Welcome!',
                   style: TextStyle(
                    fontSize: 30,
                    color:Color(0xFF363f93)
                     ),
                    ),
                Text(
                  'Please fill the details',
                   style: TextStyle(
                    fontSize: 20,
                    color:Color(0xFF363f93)
                    ),
                  ),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Name'
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                        return 'Enter correct name';
                      }
                      else {
                        return null;
                      }
                    }
                  ),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Roll Number'
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)){
                        return 'Enter correct roll number';
                      }
                      else {
                        return null;
                      }
                    }
                  ),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Phone Number'
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)){
                        return 'Enter correct phone number';
                      }
                      else {
                        return null;
                      }
                    }
                  ),
                  SizedBox(height: height*0.05,),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your email'
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([/w-]+\.)+[\w-]{2,4}').hasMatch(value)){
                        return 'Enter correct email';
                      }
                      else {
                        return null;
                      }
                    }
                  ),
                  SizedBox(height: height*0.05,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        color: Colors.grey[400],
                        onPressed: () { },
                        child: Text(
                          'Reset',
                          style: TextStyle(  
                            fontSize: 15,
                            color: Color(0xFF363f93),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            final snackBar = SnackBar(content: Text('Submitting form'));
                            _scaffoldKey.currentState!.showSnackBar(snackBar);
                          }
                        },
                        child: Icon(Icons.arrow_forward),
                        backgroundColor: Colors.blueAccent,
                      )
                    ],
                  )
              ],
            ),
          ),
        )
    );
  }
}
