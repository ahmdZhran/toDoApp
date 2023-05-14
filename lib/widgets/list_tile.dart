import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  const CustomListTile(
      {super.key, required this.isChecked, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Go To Gym',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: null, // onChanged: checkBoxChanged,
      ),
    );
  }
}

// (bool? value) {
//   setState(() {
//     isChecked = value!;
//   });
// },
