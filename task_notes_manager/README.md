# Task Notes Manager

A Flutter application to manage simple task notes with title, description, and priority fields.

## Features

- **Home Screen**: Displays a list of tasks with a clean, modern UI
- **Add Task Screen**: Form to add new tasks with validation
- **Priority Levels**: High, Medium, and Low priority with color coding
- **Navigation**: Smooth navigation between screens using Navigator
- **Material Design**: Clean UI using Material 3 design principles

## Project Structure

```
lib/
├── main.dart                 # Application entry point
├── models/
│   └── task.dart            # Task data model
└── screens/
    ├── home_screen.dart     # Home screen with task list
    └── add_task_screen.dart # Form screen for adding tasks
```

## Getting Started

To run this Flutter application:

1. Ensure you have Flutter installed on your system
2. Navigate to the project directory
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to launch the app

## UI Design

- Modern card-based layout for task items
- Color-coded priority indicators (Red for High, Orange for Medium, Green for Low)
- Floating Action Button for quick task creation
- Form validation for required fields
- Responsive and clean interface
