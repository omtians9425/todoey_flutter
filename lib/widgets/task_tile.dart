import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.title,
      this.isChecked,
      this.checkboxCallback,
      this.longPressCallback});
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}

//toggleCheckboxState: (bool checkboxState) {
//setState(() {
//isChecked = checkboxState;
//});
//}),

//class TaskCheckbox extends StatelessWidget {
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: checkboxState,
//      onChanged: toggleCheckboxState,
//    );
//  }
//}
