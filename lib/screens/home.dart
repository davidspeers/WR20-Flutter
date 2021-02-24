import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/select_category.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trends with Friends',
      theme: isDarkMode ? darkMode : lightMode,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Image.asset(
              'assets/TrendsWithFriendsLogo.png',
              height: 50,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.lightbulb,
                  color: isDarkMode ? Colors.white : Colors.black87,
                ),
                onPressed: () {
                  _toggleDarkTheme();
                },
              )
            ],
            elevation: 0.0, // remove shadow
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.play_circle_filled, color: Colors.blue),
                  tooltip: "Press to play",
                  iconSize: 60.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectCategoryPage()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _toggleDarkTheme() {
    setState(() {
      isDarkMode ^= true;
    });
  }

  final ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
  );
  final ThemeData darkMode = ThemeData(brightness: Brightness.dark);
}
