import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/results.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key, @required this.category}) : super(key: key);

  final String category;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _wordToMatch = getWord(widget.category);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Match 1 word with: \n$_wordToMatch',
              style: TextStyle(fontSize: 30.0),
            ),
            Container(
              height: 30.0,
            ),
            TextField(
              controller: _controller,
              autofocus: true,
              decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: 'Enter Term'),
              maxLength: 20,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          onPressed: () => {
                if (_controller.text.trim().isNotEmpty)
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultsPage(
                              query: _wordToMatch,
                              userAnswer: _controller.text),
                        )),
                  },
              }),
    );
  }

  String getWord(String category) {
    switch (category) {
      case 'Government':
        return ([
          'Treason',
          'Constitution',
          'Spy',
          'Hacking',
          'Emails',
          'Probe',
          'Investigation',
          'Prison'
        ]..shuffle())
            .first;
      case 'Cryptocurrency':
        return ([
          'Coin',
          'Block',
          'Farm',
          'Regulation',
          'Payment',
          'Mining',
          'Hold',
          'Chain'
        ]..shuffle())
            .first;
      case 'Technology':
        return ([
          'Tech',
          'Board',
          'Battery',
          'Facebook',
          'Fortnite',
          'Russia',
          'Collision',
          'Zuckerberg'
        ]..shuffle())
            .first;
      case 'Star Wars':
        return ([
          'Saber',
          'Force',
          'Blaster',
          'Jedi',
          'Speeder',
          'Space',
          'Emperor',
          'Projection'
        ]..shuffle())
            .first;
    }
  }
}
