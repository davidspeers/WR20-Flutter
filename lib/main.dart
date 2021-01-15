import 'package:flutter/material.dart';
import 'package:trends_with_friends/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trends with Friends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Trends with Friends'),
    );
  }
}
