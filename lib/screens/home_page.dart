import 'package:flutter/material.dart';
import 'package:task_manager/widgets/add_task.dart';
import 'package:task_manager/widgets/list_view.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const AddTasks());
        },
        backgroundColor: Colors.teal[400],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.playlist_add_check,
                      size: screenWidth * 0.1,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Text(
                    'To DayDo',
                    style: TextStyle(
                      fontSize: screenWidth * 0.075,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.02, left: screenWidth * 0.03),
                child: Text(
                  '3 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.08),
                    color: Colors.white,
                  ),
                  child: const TaskList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
