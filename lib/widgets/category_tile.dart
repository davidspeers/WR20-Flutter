import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/game.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key key, @required this.name, this.icon})
      : super(key: key);

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name, key: Key(name)),
      leading: Icon(icon),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GamePage(
                    category: name,
                  )),
        );
      },
    );
  }
}
