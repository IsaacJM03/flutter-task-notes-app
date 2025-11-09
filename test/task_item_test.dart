import 'package:flutter_test/flutter_test.dart';
import 'package:task_notes_app/models/task_item.dart';

void main() {
  group('TaskItem Model Tests', () {
    test('TaskItem can be created with required fields', () {
      final task = TaskItem(
        title: 'Test Task',
        priority: 'High',
        description: 'Test Description',
      );

      expect(task.title, 'Test Task');
      expect(task.priority, 'High');
      expect(task.description, 'Test Description');
      expect(task.isCompleted, false);
      expect(task.id, null);
    });

    test('TaskItem toJson converts correctly', () {
      final task = TaskItem(
        id: 1,
        title: 'Test Task',
        priority: 'Medium',
        description: 'Test Description',
        isCompleted: true,
      );

      final json = task.toJson();

      expect(json['id'], 1);
      expect(json['title'], 'Test Task');
      expect(json['priority'], 'Medium');
      expect(json['description'], 'Test Description');
      expect(json['isCompleted'], 1);
    });

    test('TaskItem fromJson creates correct object', () {
      final json = {
        'id': 2,
        'title': 'Task from JSON',
        'priority': 'Low',
        'description': 'Description from JSON',
        'isCompleted': 0,
      };

      final task = TaskItem.fromJson(json);

      expect(task.id, 2);
      expect(task.title, 'Task from JSON');
      expect(task.priority, 'Low');
      expect(task.description, 'Description from JSON');
      expect(task.isCompleted, false);
    });

    test('TaskItem copyWith creates new instance with updated fields', () {
      final task = TaskItem(
        id: 1,
        title: 'Original',
        priority: 'High',
        description: 'Original Description',
        isCompleted: false,
      );

      final updated = task.copyWith(
        title: 'Updated',
        isCompleted: true,
      );

      expect(updated.id, 1);
      expect(updated.title, 'Updated');
      expect(updated.priority, 'High');
      expect(updated.description, 'Original Description');
      expect(updated.isCompleted, true);
    });

    test('isCompleted defaults to false', () {
      final task = TaskItem(
        title: 'Test',
        priority: 'Low',
        description: 'Test',
      );

      expect(task.isCompleted, false);
    });

    test('toJson correctly converts isCompleted boolean to int', () {
      final completedTask = TaskItem(
        title: 'Completed',
        priority: 'High',
        description: 'Done',
        isCompleted: true,
      );

      final incompleteTask = TaskItem(
        title: 'Incomplete',
        priority: 'Low',
        description: 'Not Done',
        isCompleted: false,
      );

      expect(completedTask.toJson()['isCompleted'], 1);
      expect(incompleteTask.toJson()['isCompleted'], 0);
    });
  });
}
