import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/models/tasks.dart';
import 'package:task_manager/widgets/list_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  const TaskList(this.tasks, {super.key});
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return CustomListTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxChanged: (value) {
            setState(() {
              widget.tasks[index].taskDone();
            });
          },
        );
      },
    );
    //  ListView(children: [
    //   CustomListTile(
    //     taskTitle: tasks[0].name,
    //     isChecked: tasks[0].isDone,
    //   ),
    //   CustomListTile(
    //     taskTitle: tasks[1].name,
    //     isChecked: tasks[1].isDone,
    //   ),
    // ]);
  }
}
