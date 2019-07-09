class Player{
  int _points = 0;

  void increasePoints(){
    _points++;
  }
  void decreasePoints(){
    _points = _points - 1;
  }
  int get score{
    return _points;
  }
}