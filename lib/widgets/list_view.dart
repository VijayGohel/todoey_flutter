import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/list_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  List<Task> tasklist = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'go for walk'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasklist[index].name,
          isChnaged: tasklist[index].isDone,
          checkBoxCallback: (checkboxState) {
            setState(() {
              tasklist[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasklist.length,
    );
  }
}
