import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:edu_manager/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: EduManagerApp()));

    // Verify that the app starts (finds the Home Screen text)
    expect(find.text('Home Screen (Dashboard)'), findsOneWidget);
  });
}
