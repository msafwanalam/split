import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  final String firstText;
  final double fontSize;
  final Color color;
  final GestureTapCallback onPressed;
  final Color highlightColor;
  const QuestionButton({
    Key key,
    this.onPressed,
    this.firstText,
    this.fontSize,
    this.color,
    this.highlightColor,
  })  : assert(firstText != null),
        assert(fontSize != null),
        assert(color != null),
        assert(onPressed != null),
        assert(highlightColor != null),
        super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(9.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: double.infinity),
        child: RaisedButton(
          color: color,
          padding: const EdgeInsets.all(8.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          /*shape: CircleBorder(
            side: BorderSide(
                color: Colors.black, width: 1.0, style: BorderStyle.solid)),*/

          disabledTextColor: Colors.white,
          disabledColor: color,
          textColor: Colors.white,
          highlightColor: highlightColor,
          elevation: 20,
          highlightElevation: 2,
          child: Text(
            firstText,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito-Regular'),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
