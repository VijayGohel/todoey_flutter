import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }
}
