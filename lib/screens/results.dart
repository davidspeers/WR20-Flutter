import 'package:flutter/material.dart';
import 'package:trends_with_friends/util/trends.dart';
import 'package:trends_with_friends/widgets/score_tile.dart';

class ResultsPage extends StatefulWidget {
  ResultsPage({Key key, this.query, this.userAnswer}) : super(key: key);

  final String query;
  final String userAnswer;

  @override
  _ResultsPageState createState() => new _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getTrends(widget.query, widget.userAnswer),
          builder: (BuildContext context, AsyncSnapshot<Trends> snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            return Column(
              children: [
                ScoreTile(
                    title: 'User Answer:',
                    answer: snapshot.data.userAnswer,
                    score: snapshot.data.userWeeklyScores.last,
                    color: Colors.blue),
                ScoreTile(
                    title: 'CPU Answer:',
                    answer: snapshot.data.cpuAnswer,
                    score: snapshot.data.cpuWeeklyScores.last,
                    color: Colors.red)
              ],
            );
          }),
    );
  }
}
