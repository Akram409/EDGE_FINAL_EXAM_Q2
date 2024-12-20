import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/home_page.dart';

void main() {
  testWidgets("Widget Test", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage(),));


    await tester.enterText(find.byKey(Key("hour_input")), "10");

    await tester.tap(find.byKey(Key("calculate_button")));

    await tester.pump();

    expect(find.text("Total Salary Is : 5000\$"), findsOneWidget);
  });


  group("Multiple test",(){
    testWidgets("Widget Test - 1", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage(),));


      await tester.enterText(find.byKey(Key("hour_input")), "10");

      await tester.tap(find.byKey(Key("calculate_button")));

      await tester.pump();

      expect(find.text("Total Salary Is : 5000\$"), findsOneWidget);
    });
    testWidgets("Widget Test - 2", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage(),));


      await tester.enterText(find.byKey(Key("hour_input")), "20");

      await tester.tap(find.byKey(Key("calculate_button")));

      await tester.pump();

      expect(find.text("Total Salary Is : 10000\$"), findsOneWidget);
    });
    testWidgets("Widget Test - 3", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage(),));


      await tester.enterText(find.byKey(Key("hour_input")), "30");

      await tester.tap(find.byKey(Key("calculate_button")));

      await tester.pump();

      expect(find.text("Total Salary Is : 15000\$"), findsOneWidget);
    });
  });
}
