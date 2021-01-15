import 'dart:convert';

import 'package:http/http.dart' as http;

enum Player {
  user,
  cpu
}

class Trends {
  Trends(
      {this.userAnswer,
      this.userWeeklyScores,
      this.cpuAnswer,
      this.cpuWeeklyScores});

  final String userAnswer;
  final List<int> userWeeklyScores;
  final String cpuAnswer;
  final List<int> cpuWeeklyScores;

  // This factory constructor returns a Trends object which contains the
  // answers and their weekly values
  factory Trends.fromJson(Map<String, dynamic> json) {
    return new Trends(
        userAnswer: json['user']['answer'],
        cpuAnswer: json['cpu']['answer'],
        userWeeklyScores: json['user']['weeklyScores'].cast<int>(),
        cpuWeeklyScores: json['cpu']['weeklyScores'].cast<int>());
  }

  getAverageScore(Player player) {
    return ((player == Player.user ? userWeeklyScores: cpuWeeklyScores).reduce((a, b) => a + b) / userWeeklyScores.length).round();
  }
}

Future<Trends> getTrends(String query, String userAnswer) async {
  final url = "https://udggshlr48.execute-api.eu-central-1.amazonaws.com/prod/";
  final response = await http.post(
    url,
    body: json.encode({'query': query, 'userAnswer': userAnswer}),
    headers: {'Content-Type': 'application/json'},
  );
  final responseJson = json.decode(response.body);
  return new Trends.fromJson(responseJson);
}
