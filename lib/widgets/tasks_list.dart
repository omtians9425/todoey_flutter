import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({this.tasks, this.checkboxCallback});
  final List<Task> tasks;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: () {
            checkboxCallback(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
