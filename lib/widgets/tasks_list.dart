import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodoey/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, _) {
        return ListView.builder(
          itemCount: taskData.tasksCount,
          itemBuilder: (context, index) {
            return TaskTile(
              task: taskData.tasks[index],
            );
          },
        );
      },
    );
  }
}
