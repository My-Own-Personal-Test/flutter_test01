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
  var status = true;

  final questions = const [
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

  var questionIndex = 0;

  void _answerQuestion() {
    if (questionIndex < questions.length) {
      setState(() {
        questionIndex = questionIndex + 1;
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
      body: Column(
        children: [
          Question(questions[questionIndex]['question']),
          ...(questions[questionIndex]['answer'] as List<String>).map((item) {
            return Answer(_answerQuestion, item);
          }).toList()
        ],
      ),
    ));
  }
}
