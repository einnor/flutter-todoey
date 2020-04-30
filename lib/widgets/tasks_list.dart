import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodoey/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          title: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          onChanged: (value) {
//            setState(() {
//              widget.tasks[index].toggleDone();
//            });
          },
        );
      },
    );
  }
}
