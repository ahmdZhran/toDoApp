import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/widgets/list_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [CustomListTile()]);
  }
}
