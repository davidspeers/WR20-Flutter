import 'package:flutter/material.dart';
import 'package:trends_with_friends/widgets/fonts.dart';

class AnswerTile extends StatefulWidget {
  const AnswerTile(
      {Key key,
      @required this.text,
      @required this.isCorrect,
      @required this.isChosen,
      @required this.isQuestionAnswered})
      : super(key: key);

  final String text;
  final bool isCorrect;
  final bool isChosen;
  final bool isQuestionAnswered;

  @override
  _AnswerTileState createState() => _AnswerTileState();
}

class _AnswerTileState extends State<AnswerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        widget.text,
        key: Key(widget.text),
        style: whiteTextSmallBlack,
        textAlign: TextAlign.center,
      )),
      margin: EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: getColor()),
    );
  }

  Color getColor() {
    if (!widget.isQuestionAnswered) {
      return Colors.black12;
    }
    if (widget.isCorrect) {
      return Colors.green;
    }
    if (widget.isChosen) {
      return Colors.red;
    }
    return Colors.black12;
  }
}
