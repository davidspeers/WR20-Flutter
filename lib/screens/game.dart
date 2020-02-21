import 'package:flutter/material.dart';

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
              'Match 1 word with: \nHello',
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
        onPressed: () => print(_controller.text),
      ),
    );
  }
}
