import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // homeが名前付き変数として定義されている
    // return MaterialApp(home: Text('Hello!'));
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
