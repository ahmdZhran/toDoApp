import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  final Function addTaskCallBack;
  AddTasks(this.addTaskCallBack, {super.key});
  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text(
            'Add Your Task',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[300]),
          ),
          TextField(
            decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
            cursorColor: Colors.teal[300],
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newTask) {
              newTaskTitle = newTask;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.teal[400]),
            child: TextButton(
              onPressed: () {
                addTaskCallBack(newTaskTitle);
              },
              child: const Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
