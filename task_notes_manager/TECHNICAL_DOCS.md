# Task Notes Manager - Technical Documentation

## Application Overview

The Task Notes Manager is a Flutter application built using Material Design 3 principles. It provides a clean and intuitive interface for managing tasks with priorities.

## Architecture

### Data Model
- **Task**: Simple data class with three fields:
  - `title` (String): The task name
  - `description` (String): Detailed task description
  - `priority` (String): Priority level (High, Medium, Low)

### Screens

#### 1. Home Screen (`home_screen.dart`)
- **Purpose**: Display list of all tasks
- **Components**:
  - AppBar with title "My Tasks & Notes"
  - Column layout containing:
    - Header text "My Tasks & Notes"
    - Scrollable ListView of task cards
  - FloatingActionButton for adding new tasks
  
- **Features**:
  - Sample tasks preloaded for demonstration
  - Dynamic ListView that updates when tasks are added
  - Color-coded priority indicators on task cards
  - Empty state with icon and helpful text
  - Card-based UI with elevation and rounded corners

- **Navigation**:
  - FAB opens Add Task Screen
  - Returns to Home Screen after task is saved

#### 2. Add Task Screen (`add_task_screen.dart`)
- **Purpose**: Form for creating new tasks
- **Components**:
  - AppBar with "Add New Task" title
  - Form with validation containing:
    - Title TextField (required)
    - Description TextField (required, multiline)
    - Priority DropdownButton (High/Medium/Low)
  - Save Button (primary action)
  - Cancel Button (secondary action)

- **Validation**:
  - Title: Cannot be empty
  - Description: Cannot be empty
  - Priority: Dropdown with default value

- **Navigation**:
  - Returns Task object to Home Screen on save
  - Returns null on cancel

## UI Design Patterns

### Color Scheme
- **Primary Color**: Deep Purple (Material 3)
- **Priority Colors**:
  - High: Red (`Colors.red`)
  - Medium: Orange (`Colors.orange`)
  - Low: Green (`Colors.green`)

### Layout Widgets Used
- `Scaffold`: Main app structure
- `AppBar`: Top navigation bar
- `Column`: Vertical layout
- `ListView.builder`: Scrollable list of tasks
- `Card`: Task item containers
- `Form`: Task input form
- `TextFormField`: Text input with validation
- `DropdownButtonFormField`: Priority selection
- `FloatingActionButton`: Quick action button
- `ElevatedButton`/`OutlinedButton`: Form actions

### Design Principles
1. **Clean UI**: Minimal clutter, focus on content
2. **Material Design 3**: Modern, consistent styling
3. **Visual Hierarchy**: Clear organization with cards and spacing
4. **Feedback**: Form validation, button states
5. **Accessibility**: Proper labels, tooltips, and semantic structure

## Navigation Flow

```
HomeScreen
    |
    | (FAB pressed)
    v
AddTaskScreen
    |
    | (Save pressed with valid data)
    v
Return Task -> HomeScreen (task added to list)
    |
    | (Cancel pressed)
    v
Return null -> HomeScreen (no change)
```

## State Management

- **HomeScreen**: StatefulWidget maintaining list of tasks
- **AddTaskScreen**: StatefulWidget managing form state
- Simple setState() for reactive UI updates
- Form validation using GlobalKey<FormState>

## Code Quality

### Best Practices Implemented
- ✅ Const constructors where possible
- ✅ Proper widget disposal (TextEditingControllers)
- ✅ Form validation
- ✅ Null safety
- ✅ Clean code structure with models and screens separated
- ✅ Meaningful variable names
- ✅ Proper use of Flutter widgets
- ✅ Material Design guidelines

### Linting
- Configured with `flutter_lints` package
- Custom rules for const constructors and code quality

## Testing

### Unit Tests (`test/task_model_test.dart`)
- Task creation validation
- Field assignment verification
- Priority value testing

## Future Enhancements

Potential improvements for the app:
1. Task persistence (local storage or database)
2. Task editing functionality
3. Task deletion with confirmation
4. Task completion/checkbox feature
5. Task sorting and filtering
6. Search functionality
7. Categories/tags for tasks
8. Due dates and reminders
9. Task statistics and insights
10. Dark mode support

## File Structure

```
task_notes_manager/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── models/
│   │   └── task.dart            # Task data model
│   └── screens/
│       ├── home_screen.dart     # Home screen with task list
│       └── add_task_screen.dart # Add task form
├── test/
│   └── task_model_test.dart     # Unit tests
├── pubspec.yaml                 # Dependencies
├── analysis_options.yaml        # Linting configuration
├── .gitignore                   # Git ignore rules
└── README.md                    # Project documentation
```

## Dependencies

### Main Dependencies
- `flutter`: Flutter SDK
- `cupertino_icons`: iOS-style icons

### Dev Dependencies
- `flutter_test`: Testing framework
- `flutter_lints`: Linting rules

## Running the App

```bash
# Install dependencies
flutter pub get

# Run the app
flutter run

# Run tests
flutter test

# Analyze code
flutter analyze
```

## Summary

This Flutter application demonstrates:
- Clean architecture with separation of concerns
- Proper use of Flutter widgets and Material Design
- Navigation between screens using Navigator
- Form validation and user input handling
- State management with StatefulWidget
- Responsive and attractive UI design
- Best practices for Flutter development
