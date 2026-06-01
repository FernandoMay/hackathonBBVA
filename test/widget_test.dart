import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bbva/main.dart';

void main() {
  testWidgets('App renders', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}