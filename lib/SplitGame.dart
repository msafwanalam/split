import 'package:split/Player.dart';

class SplitGame{

  Player _player1 = new Player();
  Player _player2 = new Player();

  SplitGame();


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