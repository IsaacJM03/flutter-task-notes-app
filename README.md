# Flutter Task Notes App

A Flutter application for managing tasks and notes with local persistence.

## Features

- **Task Management**: Create, view, complete, and delete tasks
- **Priority System**: Categorize tasks as High, Medium, or Low priority
- **Dark/Light Theme**: Toggle between dark and light themes with persistent preference
- **Local Database**: Tasks stored locally using SQLite (sqflite)
- **User Preferences**: Theme preference saved using shared_preferences

## Architecture

### Screens
1. **Home Screen**: Displays all tasks in a ListView with dynamic updates
2. **Add Task Screen**: Form for creating new tasks with title, priority, and description

### Data Model
- **TaskItem**: Model class with id, title, priority, description, and isCompleted status
- Includes `toJson()` and `fromJson()` methods for serialization

### Persistence
- **shared_preferences**: Stores theme preference (light/dark mode)
- **sqflite**: Local database for CRUD operations on tasks
- **DatabaseHelper**: Singleton helper class managing all database operations

## Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK

### Installation

1. Clone the repository:
```bash
git clone https://github.com/IsaacJM03/flutter-task-notes-app.git
cd flutter-task-notes-app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Dependencies

- `flutter`: Framework
- `cupertino_icons`: iOS-style icons
- `shared_preferences`: ^2.2.2 - For storing theme preference
- `sqflite`: ^2.3.0 - SQLite database for task storage
- `path`: ^1.8.3 - Path manipulation for database file

## Project Structure

```
lib/
├── main.dart                 # App entry point with theme management
├── models/
│   └── task_item.dart       # TaskItem data model
├── helpers/
│   └── database_helper.dart # SQLite database helper
└── screens/
    ├── home_screen.dart     # Main screen with task list
    └── add_task_screen.dart # Form screen for adding tasks
```

## Usage

1. **Adding a Task**: Tap the floating action button (+) to open the add task form
2. **Completing a Task**: Check the checkbox next to a task to mark it as complete
3. **Deleting a Task**: Tap the delete icon and confirm deletion
4. **Toggling Theme**: Tap the theme icon in the app bar to switch between light and dark mode

## License

This project is open source and available under the MIT License.