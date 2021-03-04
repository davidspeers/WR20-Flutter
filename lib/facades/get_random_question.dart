import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Question> getRandomQuestion(int id) async {
  final url = "https://opentdb.com/api.php?amount=1&category=$id";
  final response = await http.get(
    url,
    headers: {'Content-Type': 'application/json'},
  );
  final responseJson = json.decode(response.body);
  return new Question.fromJson(
      (responseJson['results'] as List<dynamic>).first);
}

class Question {
  Question({this.question, this.correctAnswer, this.incorrectAnswers});

  final String question;
  final String correctAnswer;
  final List<String> incorrectAnswers;

  factory Question.fromJson(Map<String, dynamic> json) {
    return new Question(
        question: json['question'],
        correctAnswer: json['correct_answer'],
        incorrectAnswers: new List<String>.from(json['incorrect_answers']));
  }
}
