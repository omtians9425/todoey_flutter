import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

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

  int get taskCount {
    return tasks.length;
  }
}
