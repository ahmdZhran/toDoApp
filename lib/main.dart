import 'package:flutter/material.dart';
import 'package:task_manager/models/tasks_data.dart';
import 'package:task_manager/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskManager(),
      ),
    );
  }
}
