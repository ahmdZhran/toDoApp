import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Colors.grey[200],
        child: ListTile(
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
                onChanged: (bool? newValue) {
                  final player = AudioPlayer();
                  newValue == true
                      ? player.play(AssetSource("audio.m4a"))
                      : null;
                  checkBoxChanged(newValue);
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: deleteTask,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
