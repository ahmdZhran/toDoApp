import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChanged;
  final void Function() deleteTask;
  const CustomListTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxChanged,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            activeColor: Colors.teal[400],
            value: isChecked,
            onChanged: checkBoxChanged,
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: deleteTask,
          ),
        ],
      ),
    );
  }
}
