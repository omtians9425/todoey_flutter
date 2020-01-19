import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(name: 'buy milk'),
      Task(name: 'buy cake'),
      Task(name: 'go gym')
    ];

    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile();
    });
  }
}
