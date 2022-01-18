import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Project'),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]['question'] as String),
          ...(questions[questionIndex]['answer'] as List<String>).map((item) {
            return Answer(_answerQuestion, item);
          }).toList()
        ],
      ),
    ));
  }
}
