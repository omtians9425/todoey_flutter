import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'models/task.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksData>(
      create: (context) => TasksData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy cake'),
    Task(name: 'go gym')
  ];

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }
}
