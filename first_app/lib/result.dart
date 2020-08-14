import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;
  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are so innocent :)';
    } else if (totalScore <= 12) {
      resultText = 'You are likeable.';
    } else if (totalScore <= 18) {
      resultText = 'Your are ....Strange!';
    } else {
      resultText = 'You are such a bad boy!';
    }

    return resultText;
  }

  Result(this.totalScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
