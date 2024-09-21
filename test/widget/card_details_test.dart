import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hubtel_coding_challenge/widgets/card_details.dart';


void main() {

  testWidgets("CardDetails displays correct name, status, and message", (WidgetTester tester) async {
    const testName = 'Maxwell Antwi';
    const type = 'Personal';
    const message = 'Hello There';
    const asset = "assets/images/momo.jpeg";
    const status = "Successful";

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CardDetails(name: testName, status: status, type: type, asset: asset, message: message),
        ),
      ),
    );

    expect(find.text(testName), findsOneWidget);
    expect(find.text(status), findsOneWidget);
    expect(find.text(type), findsOneWidget);
    expect(find.text(message), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}