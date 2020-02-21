import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/game.dart';

class SelectCategoryPage extends StatefulWidget {
  SelectCategoryPage({Key key}) : super(key: key);

  @override
  _SelectCategoryPageState createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('Government'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GamePage(category: 'Government',)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Cryptocurrency'),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text('Technology'),
          ),
          ListTile(
            leading: Icon(Icons.flare),
            title: Text('Star Wars'),
          ),
        ],
      ),
    );
  }
}
