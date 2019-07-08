import 'package:flutter/material.dart';
import 'package:split/QuestionButton.dart';

//this gets the total height of the entire layout/screen

Color _color = Color(0xffea0707);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//this is where the game takes place
class _MyHomePageState extends State<MyHomePage> {
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Color(0xffff3232),
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    QuestionButton(
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
                    QuestionButton(
                      firstText: '47',
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
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: RaisedButton(
                    color: Color(0xffea0707),
                    padding: const EdgeInsets.all(8.0),
                    //shape: new RoundedRectangleBorder(
                    //  borderRadius: new BorderRadius.circular(22.0), side: BorderSide(color: Colors.black, width: 1.0,style: BorderStyle.solid)),
                    shape: CircleBorder(
                        side: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    highlightColor: Color(0xffc10909),
                    //shape: OutlineInputBorder(),
                    textColor: Colors.white,
                    elevation: 30,
                    highlightElevation: 10,
                    textTheme: ButtonTextTheme.primary,
                    child: Text(
                      '44',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito-Regular'),
                    ),
                    onPressed: () {
                      _incrementCounter;
                      if (_counter % 2 == 0) {}
                      if (_counter % 2 == 1) {}
                    }),
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
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  QuestionButton(
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
                  QuestionButton(
                    firstText: '47',
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
                ],
              ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    QuestionButton(
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
                    QuestionButton(
                      firstText: '47',
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
