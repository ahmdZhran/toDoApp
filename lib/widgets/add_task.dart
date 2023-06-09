import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/models/tasks.dart';
import 'package:task_manager/models/tasks_data.dart';

class AddTasks extends StatelessWidget {
  final Function addTaskCallBack;

  AddTasks(this.addTaskCallBack, {Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String? newTaskTitle;

  String? validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your task';
    }
    return null;
  }

  void _addTask(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      String taskName = newTaskTitle!;
      Provider.of<TasksData>(context, listen: false)
          .addTask(TasksModel(name: taskName, isDone: false));

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Add Your Task',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[300],
              ),
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                cursorColor: Colors.teal[300],
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTask) {
                  newTaskTitle = newTask;
                },
                validator: validateInput,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal[400],
                    ),
                    child: TextButton(
                      onPressed: () => _addTask(context),
                      child: const Text(
                        'ADD',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red[400],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
