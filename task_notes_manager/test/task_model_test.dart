import 'package:flutter_test/flutter_test.dart';
import 'package:task_notes_manager/models/task.dart';

void main() {
  group('Task Model Tests', () {
    test('Task should be created with all required fields', () {
      final task = Task(
        title: 'Test Task',
        description: 'Test Description',
        priority: 'High',
      );

      expect(task.title, 'Test Task');
      expect(task.description, 'Test Description');
      expect(task.priority, 'High');
    });

    test('Task should accept different priority values', () {
      final highPriorityTask = Task(
        title: 'High Priority',
        description: 'Important task',
        priority: 'High',
      );

      final mediumPriorityTask = Task(
        title: 'Medium Priority',
        description: 'Normal task',
        priority: 'Medium',
      );

      final lowPriorityTask = Task(
        title: 'Low Priority',
        description: 'Less urgent task',
        priority: 'Low',
      );

      expect(highPriorityTask.priority, 'High');
      expect(mediumPriorityTask.priority, 'Medium');
      expect(lowPriorityTask.priority, 'Low');
    });
  });
}
