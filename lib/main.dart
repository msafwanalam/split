import 'package:flutter/material.dart';
import 'package:split/QuestionButton.dart';
import 'package:split/GameUserInterface.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameUserInterface(title: 'Flutter Demo Home Page'),
    );
  }
}
