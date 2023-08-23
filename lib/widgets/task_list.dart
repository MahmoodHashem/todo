

import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo/models/tasks.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
 const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (context, taskData, child){
          return ListView.builder(
              itemCount: Provider.of<TaskData>(context, listen: true).tasks.length,
              itemBuilder: (context,index){
                return TaskTile(
                    taskTile: taskData.tasks[index].name,
                    isChecked:taskData.tasks[index].isDone,
                    checkboxCallback: (checkboxState){
                      // setState(() {
                      //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                      // });
                    }
                );

              });
        }

    );
  }
}

