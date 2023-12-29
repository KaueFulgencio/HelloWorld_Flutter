import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:primeira_aplicacao/screens/main_screen.dart';

void main() {
  testWidgets('Teste de incremento do contador', (WidgetTester tester) async {
    // Constrói o app e ativa um frame.
    await tester.pumpWidget(const MaterialApp(
      home: MainScreen(),
    ));

    // Verifica se o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toca no ícone '+' e ativa um frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica se o contador foi incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
