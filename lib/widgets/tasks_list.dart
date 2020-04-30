import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:fluttertodoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(
      name: 'Buy milk',
    ),
    Task(
      name: 'Buy eggs',
    ),
    Task(
      name: 'Buy bread',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
        );
      },
    );
  }
}
