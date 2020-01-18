import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {
  const TaskCheckbox({
    Key key,
  }) : super(key: key);

  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      onChanged: null,
    );
  }
}
