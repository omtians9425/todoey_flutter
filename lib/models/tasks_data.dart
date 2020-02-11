import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy cake'),
    Task(name: 'go gym')
  ];

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }
}
