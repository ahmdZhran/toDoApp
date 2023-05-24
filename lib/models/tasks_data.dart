import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:task_manager/constants.dart';
import 'package:task_manager/models/tasks.dart';

class TasksData extends ChangeNotifier {
  List<TasksModels> tasks = [];
  addTask(TasksModels newTaskTitle) async {
    var taskBox = Hive.box<TasksModels>(kNotesBox);
    await taskBox.add(newTaskTitle);
    notifyListeners();
  }

  void checkTaskState(TasksModels task) {
    task.taskDone();
    notifyListeners();
  }

  void deleteTask(TasksModels task) {
    tasks.remove(task);
    notifyListeners();
  }
}
