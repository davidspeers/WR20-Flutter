import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group("Trends with friends", () {
    final playButton = find.byTooltip("Press to play");
    final governmentCategory = find.byValueKey("Government");

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Show categories', () async {
      await driver.tap(playButton);
      expect(await driver.getText(governmentCategory), "Government");
    });
  });
}
