import 'package:flutter/material.dart';

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
      child: Text(widget.text, key: Key(widget.text)),
      color: this.getColor(),
    );
  }

  Color getColor() {
    if (!widget.isQuestionAnswered) {
      return Colors.white;
    }
    if (widget.isCorrect) {
      return Colors.green;
    }
    if (widget.isChosen) {
      return Colors.red;
    }
    return Colors.white;
  }
}
