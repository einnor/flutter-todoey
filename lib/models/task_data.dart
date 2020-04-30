import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData with ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get tasksCount {
    return tasks.length;
  }

  void addTask(title) {
    tasks.add(Task(name: title));
    notifyListeners();
  }
}
