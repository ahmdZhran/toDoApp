import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Go To Gym',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: ChickBox(
        isChecked,
        (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

class ChickBox extends StatelessWidget {
  final bool? checkBoxState;
  final Function(bool?) checkBoxChanged;
  const ChickBox(this.checkBoxState, this.checkBoxChanged, {super.key});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: checkBoxState,
      onChanged: checkBoxChanged,
    );
  }
}
