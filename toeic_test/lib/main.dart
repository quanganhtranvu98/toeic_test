import 'package:flutter/material.dart';
import 'package:toeic_test/view/Screen1.dart';
import 'package:toeic_test/view/selectPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectPage(),
    );
  }
}

