import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_notes_manager/utils/priority_colors.dart';

void main() {
  group('PriorityColors Tests', () {
    test('getSolidColor returns correct colors for each priority', () {
      expect(PriorityColors.getSolidColor('High'), Colors.red);
      expect(PriorityColors.getSolidColor('high'), Colors.red);
      expect(PriorityColors.getSolidColor('Medium'), Colors.orange);
      expect(PriorityColors.getSolidColor('medium'), Colors.orange);
      expect(PriorityColors.getSolidColor('Low'), Colors.green);
      expect(PriorityColors.getSolidColor('low'), Colors.green);
    });

    test('getSolidColor returns grey for unknown priority', () {
      expect(PriorityColors.getSolidColor('Unknown'), Colors.grey);
      expect(PriorityColors.getSolidColor(''), Colors.grey);
    });

    test('getShadeColor returns correct shade colors for each priority', () {
      expect(PriorityColors.getShadeColor('High'), Colors.red.shade100);
      expect(PriorityColors.getShadeColor('high'), Colors.red.shade100);
      expect(PriorityColors.getShadeColor('Medium'), Colors.orange.shade100);
      expect(PriorityColors.getShadeColor('medium'), Colors.orange.shade100);
      expect(PriorityColors.getShadeColor('Low'), Colors.green.shade100);
      expect(PriorityColors.getShadeColor('low'), Colors.green.shade100);
    });

    test('getShadeColor returns grey shade for unknown priority', () {
      expect(PriorityColors.getShadeColor('Unknown'), Colors.grey.shade100);
      expect(PriorityColors.getShadeColor(''), Colors.grey.shade100);
    });

    test('getBorderColor returns same as getShadeColor', () {
      expect(PriorityColors.getBorderColor('High'), PriorityColors.getShadeColor('High'));
      expect(PriorityColors.getBorderColor('Medium'), PriorityColors.getShadeColor('Medium'));
      expect(PriorityColors.getBorderColor('Low'), PriorityColors.getShadeColor('Low'));
    });

    test('Priority color methods are case-insensitive', () {
      expect(PriorityColors.getSolidColor('HIGH'), Colors.red);
      expect(PriorityColors.getSolidColor('MeDiUm'), Colors.orange);
      expect(PriorityColors.getSolidColor('LoW'), Colors.green);
    });
  });
}
