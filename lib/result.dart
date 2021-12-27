import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhase {
    var resultText = 'You Did it';
    if (resultScore >= 30)
      resultText = 'Du bist super!';
    else if (resultScore < 20) resultText = 'Do it Again';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Rest Quiz!'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple)),
          )
        ],
      ),
    );
  }
}
