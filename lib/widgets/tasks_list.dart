import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:fluttertodoey/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList({@required this.tasks});
  final List<Task> tasks;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          onChanged: (value) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
