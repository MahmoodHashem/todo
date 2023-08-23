
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final bool isChecked;
  final String taskTile;
  final  checkboxCallback;
  final onLongePressedCallback;

  TaskTile({
    this.isChecked = false,
    required this.taskTile,
    required this.checkboxCallback,
    required this.onLongePressedCallback,
});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongePressedCallback,
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

