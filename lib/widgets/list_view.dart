import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/models/tasks_data.dart';
import 'package:task_manager/widgets/list_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemCount: tasksData.tasks.length,
          itemBuilder: (context, index) {
            return CustomListTile(
              isChecked: tasksData.tasks[index].isDone,
              taskTitle: tasksData.tasks[index].name,
              checkBoxChanged: (value) {
                tasksData.checkTaskState(tasksData.tasks[index]);
              },
              deleteTask: () {
                tasksData.deleteTask(tasksData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
