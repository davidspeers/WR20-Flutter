import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/select_category.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/TrendsWithFriendsLogo.png',
          height: 50,
        ),
        backgroundColor: Color(0xfffafafa),
        elevation: 0.0, // remove shadow
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.play_circle_filled, color: Colors.blue),
              iconSize: 60.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectCategoryPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
