import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your grading mark in mobile computing course?',
      'answers': [
        {
          'text': 'Excellent',
          'score': 10
        },
        {
          'text': 'Very good',
          'score': 8
        },
        {
          'text': 'Good',
          'score': 7
        },
        {
          'text': 'Satisfied',
          'score': 6
        },
      ],
    },
    {
      'questionText': 'Q2.Do you want to continue learning flutter?',
      'answers': [
        {
          'text': 'Excellent',
          'score': 10
        },
        {
          'text': 'Very good',
          'score': 8
        },
        {
          'text': 'Good',
          'score': 7
        },
        {
          'text': 'Satisfied',
          'score': 6
        },
      ],
    },
    {
      'questionText': ' Q3. Which programing language is used by Flutter?',
      'answers': [
        {
          'text': 'Excellent',
          'score': 10
        },
        {
          'text': 'Very good',
          'score': 8
        },
        {
          'text': 'Good',
          'score': 7
        },
        {
          'text': 'Satisfied',
          'score': 6
        },
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programing language?',
      'answers': [
        {
          'text': 'Excellent',
          'score': 10
        },
        {
          'text': 'Very good',
          'score': 8
        },
        {
          'text': 'Good',
          'score': 7
        },
        {
          'text': 'Satisfied',
          'score': 6
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quiz App'),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
