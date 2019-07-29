import 'dart:math';

class Question {
  String _question;
  int _answer;
  int _choiceOne;
  int _choiceTwo;
  int _choiceThree;
  int _choiceFour;

  Question() {
    int min = 0;
    int max = 101;
    Random rnd = new Random();
    int partOne = rnd.nextInt(max);
    int partTwo = rnd.nextInt(max);

    _answer = partOne + partTwo;
    _question = partOne.toString() + " + " + partTwo.toString() + " =  ?";

    //generating answer choices

    int first = (_answer % 10) + rnd.nextInt(19) * 10;
    int second = _answer + rnd.nextInt(40);
    int third = (_answer - rnd.nextInt(25)).abs();
    int fourth = _answer;

    while (first == _answer || second == _answer || third == _answer) {
      if (first == _answer) {
        first = (_answer % 10) + rnd.nextInt(19) * 10;
      }
      if (second == _answer) {
        second = _answer + rnd.nextInt(5) +1;
      }
      if (third == _answer) {
        (_answer - rnd.nextInt(50) + 1).abs();
      }
    }

    List list = new List<int>();
    list.add(first);
    list.add(second);
    list.add(third);
    list.add(fourth);
    list.shuffle();

    _choiceOne = list[0];
    _choiceTwo = list[1];
    _choiceThree = list[2];
    _choiceFour = list[3];

  }

  String get question{
    return _question;
  }

  int get answer{
    return _answer;
  }

  int get firstChoice{
    return _choiceOne;
  }

  int get secondChoice{
    return _choiceTwo;
  }

  int get thirdChoice{
    return _choiceThree;
  }

  int get fourthChoice{
    return _choiceFour;
  }

  bool isCorrect(int num){
    return num == _answer;
  }

}
