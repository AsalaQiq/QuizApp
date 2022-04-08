import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: new EdgeInsets.symmetric(vertical: 40.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 23, color: Colors.white),
        textAlign: TextAlign.center,
      ), //Text
    );

    //Container
  }
}
