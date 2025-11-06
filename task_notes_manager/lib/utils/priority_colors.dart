import 'package:flutter/material.dart';

/// Utility class for priority-related colors
class PriorityColors {
  /// Get the solid color for a priority level (used in form screen)
  static Color getSolidColor(String priority) {
    switch (priority.toLowerCase()) {
      case 'high':
        return Colors.red;
      case 'medium':
        return Colors.orange;
      case 'low':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  /// Get the shade color for a priority level (used in task cards)
  static Color getShadeColor(String priority) {
    switch (priority.toLowerCase()) {
      case 'high':
        return Colors.red.shade100;
      case 'medium':
        return Colors.orange.shade100;
      case 'low':
        return Colors.green.shade100;
      default:
        return Colors.grey.shade100;
    }
  }

  /// Get the border color for a priority level (same as shade for consistency)
  static Color getBorderColor(String priority) {
    return getShadeColor(priority);
  }
}
