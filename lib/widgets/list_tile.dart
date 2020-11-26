import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChnaged;
  final String taskTitle;
  final Function checkBoxCallback;
  TaskTile({this.isChnaged, this.taskTitle, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChnaged ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChnaged,
        onChanged: checkBoxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
