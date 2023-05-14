import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/models/tasks.dart';
import 'package:task_manager/widgets/list_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "go to hell"),
    Task(name: "going to Dhab"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      CustomListTile(
        taskTitle: tasks[0].name,
        isChecked: tasks[0].isDone,
      ),
      CustomListTile(
        taskTitle: tasks[1].name,
        isChecked: tasks[1].isDone,
      ),
    ]);
  }
}
