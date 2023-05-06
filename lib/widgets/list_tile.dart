import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Go To Gym'),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
