// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tweddit/main.dart';
import 'package:tweddit/login.dart';
import 'package:tweddit/home.dart';

import 'package:tweddit/test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Login widget builds', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Login()));

    expect(find.byType(Login), findsOneWidget);
  });

  /*testWidgets('Pressing Login button navigates to Home page',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Login()));

    final loginButton = find.widgetWithText(ElevatedButton, 'Login');
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    expect(find.byType(home), findsOneWidget);
  });
*/
  testWidgets('Pressing Login button shows Snackbar',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Login()));

    final loginButton = find.widgetWithText(ElevatedButton, 'Login');
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    expect(find.byType(SnackBar), findsOneWidget);
  });

  testWidgets('Login widget has Signup button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Login()));

    expect(find.widgetWithText(TextButton, 'Signup'), findsOneWidget);
  });
}
