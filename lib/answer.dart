import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'question.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: null,
      ),
    );
  }
}
