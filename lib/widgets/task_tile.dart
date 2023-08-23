
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final bool isChecked;
  final String taskTile;
  final  checkboxCallback;

  TaskTile({
    this.isChecked = false,
    required this.taskTile,
    required this.checkboxCallback,
});


  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(taskTile,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough: null,
        ),
        ),
        trailing: Checkbox(
            value: isChecked,
            onChanged: checkboxCallback,
    ));
  }
}

