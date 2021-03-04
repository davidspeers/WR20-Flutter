import 'package:test/test.dart';
import 'package:trends_with_friends/facades/get_categories.dart';

void main() {
  test('API should return list of categories', () async {
    var categories = await getCategories();
    expect(categories.length, 24);
  });
}
