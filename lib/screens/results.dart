import 'package:flutter/material.dart';
import 'package:trends_with_friends/util/trends.dart';

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
    return new FutureBuilder(
        future: getTrends(widget.query, widget.userAnswer),
        initialData: null,
        builder: (BuildContext context, AsyncSnapshot<Trends> trends) {
          if (!trends.hasData)
            return Center(child: CircularProgressIndicator());
          return new SingleChildScrollView(
              child: new Text(
                trends.data.cpuAnswer,
              ));
        });
  }
}
