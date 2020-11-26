import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/list_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskView extends StatefulWidget {
  final List<Task> taskList;
  TaskView({this.taskList});

  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.taskList[index].name,
          isChnaged: widget.taskList[index].isDone,
          checkBoxCallback: (checkboxState) {
            setState(() {
              widget.taskList[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.taskList.length,
    );
  }
}
