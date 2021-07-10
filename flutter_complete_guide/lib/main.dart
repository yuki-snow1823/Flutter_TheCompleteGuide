import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // homeが名前付き変数として定義されている
    return MaterialApp(home: Text('Hello!'));
  }
}