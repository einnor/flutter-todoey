import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get tasksCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(title) {
    _tasks.add(Task(name: title));
    notifyListeners();
  }
}
