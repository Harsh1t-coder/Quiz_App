import 'package:flutter/material.dart';
import 'question.dart';
import 'package:flutter_complete_guide/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      if (questionIndex > 1) questionIndex = 0;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite movie',
      'What\'s your favorite book',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
