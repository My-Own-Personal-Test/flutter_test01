import 'package:flutter/material.dart';
import './questions.dart';

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

  void answerQuestion() {
    setState(() {
      if (questionIndex != 1) {
        questionIndex = questionIndex + 1;
      } else {
        questionIndex = questionIndex - 1;
      }
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'is dart fun?',
      'is dart dificult?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Project'),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1!'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2!'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3!'),
            onPressed: () {
              print('funct alt 3');
            },
          ),
        ],
      ),
    ));
  }
}
