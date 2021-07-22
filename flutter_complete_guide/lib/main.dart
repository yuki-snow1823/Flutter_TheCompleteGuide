import 'package:flutter/material.dart';

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
class _MyAppState extends State < MyApp > {
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
      'What\'s your favorite color? ',
      'What\'s your favorite animal? ',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: < Widget > [
            Text(questions[_questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answer 2 chosen!')),
            RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}

