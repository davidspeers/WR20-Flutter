import 'package:flutter/material.dart';
import 'package:trends_with_friends/widgets/category_tile.dart';

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
          CategoryTile(name: 'Government', icon: Icons.account_balance),
          CategoryTile(name: 'Cryptocurrency', icon: Icons.monetization_on),
          CategoryTile(name: 'Technology', icon: Icons.android),
          CategoryTile(name: 'Star Wars', icon: Icons.flare),
        ],
      ),
    );
  }
}
