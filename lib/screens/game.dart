import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  GamePage({Key key, @required this.category}) : super(key: key);

  final String category;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Column(
        children: <Widget>[
          TextField(
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
    );
  }
}
