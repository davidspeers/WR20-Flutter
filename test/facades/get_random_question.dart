import 'package:test/test.dart';
import 'package:trends_with_friends/facades/get_random_question.dart';

void main() {
  test('API should return a question', () async {
    var question = await getRandomQuestion(9);
    expect(question.question.length > 0, isTrue);
  });
}
