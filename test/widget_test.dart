// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trends_with_friends/main.dart';

void main() {
  testWidgets('Can access list of categories', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap the play icon and flush changes.
    await tester.tap(find.byIcon(Icons.play_circle_filled));
    await tester.pumpAndSettle();

    // Verify that all our categories are shown.
    expect(find.text('Government'), findsOneWidget);
    expect(find.text('Cryptocurrency'), findsOneWidget);
    expect(find.text('Technology'), findsOneWidget);
    expect(find.text('Star Wars'), findsOneWidget);
  });
}
