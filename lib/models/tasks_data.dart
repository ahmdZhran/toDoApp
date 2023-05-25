import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_manager/constants.dart';
import 'package:task_manager/models/tasks.dart';

class TasksData extends ChangeNotifier {
  List<TasksModel> tasks = [];

  TasksData() {
    openBoxAndLoadTasks();
  }

  Future<void> openBoxAndLoadTasks() async {
    await Hive.initFlutter();
    await Hive.openBox<TasksModel>(kNotesBox);
    var taskBox = Hive.box<TasksModel>(kNotesBox);
    tasks = taskBox.values.toList();
    notifyListeners();
  }

  addTask(TasksModel newTask) async {
    var taskBox = Hive.box<TasksModel>(kNotesBox);
    await taskBox.add(newTask);
    tasks = taskBox.values.toList();
    notifyListeners();
  }

  void checkTaskState(TasksModel task) {
    task.taskDone();
    notifyListeners();
  }

  void deleteTask(TasksModel task) async {
    var taskBox = Hive.box<TasksModel>(kNotesBox);
    await taskBox.delete(task.key);
    tasks = taskBox.values.toList();
    notifyListeners();
  }
}
