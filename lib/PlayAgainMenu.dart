import 'package:flutter/material.dart';
import 'package:split/QuestionButton.dart';
import 'package:split/GameUserInterface.dart';


class PlayAgainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameUserInterface()),
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
}