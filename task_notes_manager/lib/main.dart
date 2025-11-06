import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TaskNotesManagerApp());
}

class TaskNotesManagerApp extends StatelessWidget {
  const TaskNotesManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Notes Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
