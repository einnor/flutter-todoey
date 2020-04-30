import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodoey/models/task_data.dart';
import 'package:fluttertodoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  TaskTile({@required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {},
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: (value) {
          Provider.of<TaskData>(context, listen: false).updateTask(task);
        },
      ),
    );
  }
}
