import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Go To Gym'),
      trailing: ChickBox(),
    );
  }
}

class ChickBox extends StatefulWidget {
  const ChickBox({super.key});

  @override
  State<ChickBox> createState() => _ChickBoxState();
}

class _ChickBoxState extends State<ChickBox> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
