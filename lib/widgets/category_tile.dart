import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/game.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key key, @required this.name, @required this.id})
      : super(key: key);

  final String name;
  final int id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name, key: Key(name)),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GamePage(
                    categoryName: name,
                    categoryId: id,
                  )),
        );
      },
    );
  }
}
