import 'package:split/Player.dart';

class SplitGame{
  double _timer = 0;
  Player _player1 = new Player();
  Player _player2 = new Player();

  SplitGame();//To start the timer and continue that

  double get totalTime{
    return _timer;
  }

  void increaseScorePlayer1(){
    _player1.increasePoints();
  }

  void increaseScorePlayer2(){
    _player2.increasePoints();
  }

  int get ScorePlayer1{
    return _player1.score;
  }

  int get ScorePlayer2{
    return _player2.score;
  }

}