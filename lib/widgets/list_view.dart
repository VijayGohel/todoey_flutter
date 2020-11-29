import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/list_tile.dart';
import 'package:provider/provider.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: value.tasks[index].name,
              isChnaged: value.tasks[index].isDone,
              checkBoxCallback: (checkboxState) {
                // setState(() {
                //   widget.taskList[index].toggleDone();
                // });
              },
            );
          },
          itemCount: value.taskCount,
        );
      },
    );
  }
}
