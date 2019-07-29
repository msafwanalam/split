import 'package:flutter/material.dart';
import 'package:split/QuestionButton.dart';
import 'dart:async';
import 'package:split/PlayAgainMenu.dart';
import 'package:split/Question.dart';
import 'package:split/SplitGame.dart';
import 'package:split/Player.dart';

Color _color = Color(0xffea0707);

class GameUserInterface extends StatefulWidget {
  GameUserInterface({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GameUserInterface createState() => _GameUserInterface();
}

//this is where the game takes place
class _GameUserInterface extends State<GameUserInterface> {
  //This is where the Question class is initialized
  Question _questionBlue;
  Question _questionRed;
  Player _playerBlue;
  Player _playerRed;

  @override
  initState() {
    _questionBlue = new Question();
    _questionRed = new Question();
    startTimer();
  }

  ///////////////////Timer implemented
  Timer _timer;
  int _start = 1000;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
            () {
              if (_start < 1) {
                timer.cancel();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlayAgainMenu()),
                );
              } else {
                _start = _start - 1;
              }
            },
          ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  //////////////////////////

  void _updateGame(int num) {
    setState(() {
      _questionRed = new Question();
    });
  }

//layout of the flutter program
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffe33232),
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        ifBlue: true,
                        firstText: '45',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _updateGame(null);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        ifBlue: true,
                        firstText: '78',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _updateGame(null);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        ifBlue: true,
                        firstText: '53',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _updateGame(null);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        ifBlue: true,
                        firstText: '29',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _updateGame(null);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        //shape: OutlineInputBorder(),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Player 1 Question',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nunito-Regular'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        //shape: OutlineInputBorder(),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            _questionRed.question,
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nunito-Regular'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        firstText: _questionRed.firstChoice.toString(),
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          _updateGame(2);
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        firstText: _questionRed.secondChoice.toString(),
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          _updateGame(2);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        firstText: _questionRed.thirdChoice.toString(),
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          _updateGame(2);
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        firstText: _questionRed.fourthChoice.toString(),
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          _updateGame(2);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
