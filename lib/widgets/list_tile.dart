import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChnaged;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function deleteCallback;
  TaskTile(
      {this.isChnaged,
      this.taskTitle,
      this.checkBoxCallback,
      this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallback,
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
