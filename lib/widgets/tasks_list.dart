import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/tasks_data.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: tasksData.tasks[index].name,
              isChecked: tasksData.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                setState(() {
                  tasksData.tasks[index].toggleDone();
                });
              },
            );
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
