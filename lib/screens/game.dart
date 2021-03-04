import 'package:flutter/material.dart';
import 'package:trends_with_friends/facades/get_random_question.dart';
import 'package:trends_with_friends/widgets/answer_tile.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key, @required this.categoryName, @required this.categoryId})
      : super(key: key);

  final String categoryName;
  final int categoryId;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
      body: FutureBuilder(
          future: getRandomQuestion(widget.categoryId),
          builder: (BuildContext context, AsyncSnapshot<Question> snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            var answers = snapshot.data.incorrectAnswers
              ..add(snapshot.data.correctAnswer)
              ..shuffle();
            print(answers);
            return Column(
              children: [
                Text(snapshot.data.question),
                GridView.count(
                  children: answers
                      .map((answer) => GridTile(
                            child: AnswerTile(
                              text: answer,
                              isCorrect: answer == snapshot.data.correctAnswer,
                              isChosen: false,
                              isQuestionAnswered: false,
                            ),
                          ))
                      .toList(),
                  crossAxisCount: 2,
                  shrinkWrap: true,
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () =>
              Navigator.popUntil(context, ModalRoute.withName('/'))),
    );
  }
}
