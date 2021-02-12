import 'package:test/test.dart';
import 'package:trends_with_friends/util/trends.dart';

void main() {
  test(
      'trends should give the correct average scores for the user and cpu player',
      () {
    final trends = Trends(
        userAnswer: "Collision detection",
        cpuAnswer: "Collision auto",
        userWeeklyScores: List.from([1, 2, 3, 4, 5, 9]),
        cpuWeeklyScores: List.from([4, 4, 4, 6, 6, 6]));

    expect(trends.getAverageScore(Player.user), 4);
    expect(trends.getAverageScore(Player.cpu), 5);
  });
}
