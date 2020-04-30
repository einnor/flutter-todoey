import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;

  TaskTile({
    @required this.isChecked,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          Provider.of<TaskData>(context).updateTask(index);
        },
      ),
    );
  }
}
