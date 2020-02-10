import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/main.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

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
              title: Provider.of<TasksData>(context).tasks[index].name,
              isChecked: Provider.of<TasksData>(context).tasks[index].isDone,
              checkboxCallback: (checkboxState) {
                setState(() {
                  Provider.of<TasksData>(context).tasks[index].toggleDone();
                });
              },
            );
          },
          itemCount: Provider.of<TasksData>(context).tasks.length,
        );
      },
    );
  }
}
