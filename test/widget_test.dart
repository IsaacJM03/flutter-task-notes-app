import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_notes_app/main.dart';

void main() {
  testWidgets('App launches with Home Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify the app bar title is displayed
    expect(find.text('My Tasks & Notes'), findsOneWidget);

    // Verify the FAB is present
    expect(find.byType(FloatingActionButton), findsOneWidget);

    // Verify theme toggle button is present
    expect(find.byIcon(Icons.brightness_6), findsOneWidget);
  });

  testWidgets('FAB opens Add Task Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Tap the FAB
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    // Verify Add Task Screen is displayed
    expect(find.text('Add Task / Note'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Priority'), findsOneWidget);
    expect(find.text('Description'), findsOneWidget);
    expect(find.text('Save Task'), findsOneWidget);
  });

  testWidgets('Empty state is shown when no tasks', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verify empty state message
    expect(find.text('No tasks yet!'), findsOneWidget);
    expect(find.text('Tap the + button to add a task'), findsOneWidget);
  });
}
