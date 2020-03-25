
import 'package:flutter/material.dart';
import '../widgets/answer_widget.dart';
import '../widgets/result_widget.dart';
import "../data/questions.dart";
import "../widgets/quiz_widget.dart";

class QuizScreen extends StatefulWidget {
  static const routeName = "/quiz";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  final _questions = Questions.questions;
 
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
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
