import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// statefulにする
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// _アプリ名stateができる
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // stateを更新するときに使うメソッド
    setState(() {
      // すぐ変更したいからここに入れた
      _questionIndex = _questionIndex + 1;
    });
    // _questionIndex = questionIndex + 1;
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // homeが名前付き変数として定義されている
    // return MaterialApp(home: Text('Hello!'))

    var questions = [
      {
        'questionText': 'What\'s your favorite color? ',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal? ',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite instructor? ',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
