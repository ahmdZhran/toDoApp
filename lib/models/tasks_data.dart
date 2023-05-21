import 'package:flutter/material.dart';
import 'package:task_manager/models/tasks.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [];
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
