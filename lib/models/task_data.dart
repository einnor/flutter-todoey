import 'package:flutter/foundation.dart';
import 'dart:collection';
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

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(title) {
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  void toggleDone(value, index) {
    _tasks[index].toggleDone();
    notifyListeners();t
  }
}
