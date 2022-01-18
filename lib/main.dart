import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var status = true;

  final _questions = const [
    {
      'question': 'Is dart fun?',
      'answer': [
        'Yes!',
        'Meehh...',
        'I\'m gonna think about it again',
        'Hell No!',
      ]
    },
    {
      'question': 'Is dart dificult to learn?',
      'answer': [
        'Yes!',
        'Meehh...',
        'Not really, i think',
        'Hell No!',
      ]
    },
    {
      'question': 'Is dart dificult to cool?',
      'answer': [
        'Yes!',
        'Meehh...',
        'Don\'t know yet',
        'Hell No!',
      ]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Project'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(),
    ));
  }
}
