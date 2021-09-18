import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _finished = false;
  final _questions = const [
    {
      'question': "What is your favourite color",
      'answers': [
        {'text': "Black", 'score': 10},
        {'text': "Red", 'score': 5},
        {'text': "Green", 'score': 3},
        {'text': "White", 'score': 1}
      ]
    },
    {
      'question': "What is your favourite animal",
      'answers': [
        {'text': "Rabbit", 'score': 3},
        {'text': "Snake", 'score': 11},
        {'text': "Elephant", 'score': 5},
        {'text': "Lion", 'score': 9}
      ]
    },
    {
      'question': "Who is your favourite instructor",
      'answers': [
        {'text': "Max", 'score': 1},
        {'text': "Max", 'score': 1},
        {'text': "Max", 'score': 1},
        {'text': "Max", 'score': 1}
      ]
    },
  ];

  answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });

    if (_questionIndex == _questions.length) {
      _finished = true;
    }
  }

  restart() {
    setState(() {
      _finished = false;
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            !_finished
                ? Quiz(_questions, _questionIndex, answerQuestion)
                : Result(restart, _totalScore)
          ],
        ),
      ),
    );
  }
}
