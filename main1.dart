import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _Questions = const [
    {
      'Questions': 'What is Flutter?',
      'Options': [
        {'text': 'Flutter is an open-source DBMS', 'score': 0},
        {'text': 'Flutter is an open-source UI toolkit', 'score': 10},
        {'text': 'Flutter is an open-source backend toolkit', 'score': 0},
        {'text': 'All the above', 'score': 0}
      ]
    },
    {
      'Questions': 'What is Dart?',
      'Options': [
        {'text': 'Dart is a object-oriented programming language ', 'score': 0},
        {
          'text': 'Dart is used to create a frontend user interfaces',
          'score': 0
        },
        {'text': 'Both A and B', 'score': 10},
        {'text': 'None of the above', 'score': 0}
      ]
    },
    {
      'Questions':
          'Which of the following takes more time to compile and update the app?',
      'Options': [
        {'text': 'Hot Reload', 'score': 0},
        {'text': 'Hot Restart', 'score': 10},
        {'text': 'Cold Reload', 'score': 0},
        {'text': 'Depends on Computer'}
      ]
    },
    {
      'Questions':
          'Without the main() function, we cannot write any program on Flutter',
      'Options': [
        {'text': 'True', 'score': 10},
        {'text': 'False', 'score': 0},
      ]
    },
  ];
