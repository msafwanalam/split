import 'package:flutter/material.dart';
import 'package:split/QuestionButton.dart';

Color _color = Color(0xffea0707);

class GameUserInterface extends StatefulWidget {
  GameUserInterface({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _GameUserInterface createState() => _GameUserInterface();
}

//this is where the game takes place
class _GameUserInterface extends State<GameUserInterface> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
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
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
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
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
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
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  shape: OutlineInputBorder(),
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
                        firstText: '23',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        firstText: '23',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
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
                        firstText: '23',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: QuestionButton(
                        firstText: '23',
                        fontSize: 50.0,
                        color: _color,
                        highlightColor: Color(0xffc10909),
                        onPressed: () {
                          setState(() {
                            _incrementCounter();
                            if (_counter % 2 == 0) {}
                            if (_counter % 2 == 1) {}
                          });
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
