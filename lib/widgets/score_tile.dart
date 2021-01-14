import 'package:flutter/material.dart';

import 'fonts.dart';

class ScoreTile extends StatelessWidget {
  const ScoreTile(
      {Key key,
      @required this.title,
      @required this.answer,
      @required this.score,
      @required this.color})
      : super(key: key);

  final String title;
  final String answer;
  final int score;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: Container(
      color: color,
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Flexible(child: Text(title, style: whiteTextBlack)),
          new Flexible(
              child: Text(
            "$answer: $score",
            style: whiteTextSmallBlack,
          )),
        ],
      ),
    ));
  }
}
