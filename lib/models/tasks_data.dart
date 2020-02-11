import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy cake'),
    Task(name: 'go gym')
  ];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  int get taskCount {
    return tasks.length;
  }
}
