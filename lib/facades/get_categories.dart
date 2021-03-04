import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Category>> getCategories() async {
  final url = "https://opentdb.com/api_category.php";
  final response = await http.get(
    url,
    headers: {'Content-Type': 'application/json'},
  );
  final responseJson = json.decode(response.body);
  return (responseJson['trivia_categories'] as List<dynamic>)
      .map((entry) => new Category.fromJson(entry))
      .toList();
}

class Category {
  Category({this.id, this.name});

  final int id;
  final String name;

  factory Category.fromJson(Map<String, dynamic> json) {
    return new Category(id: json['id'], name: json['name']);
  }
}
