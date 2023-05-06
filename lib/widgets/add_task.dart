import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text(
            'Add Your Task',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[300]),
          ),
          TextField(
            decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
            cursorColor: Colors.teal[300],
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.teal[300],
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
