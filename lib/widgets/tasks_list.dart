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
    return ListView(
      children: <Widget>[
        TaskTile(
          title: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          title: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          title: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
