
import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'add_task_screen.dart';
import 'package:todo/widgets/task_list.dart';
import 'package:todo/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';


class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30,right: 30,left:30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                    child: Icon(Icons.list, size: 30, color: Colors.lightBlueAccent,)),
                SizedBox(
                  height: 30,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child:Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: TaskList(),
              ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return AddTask();
        });
      },
        backgroundColor: Colors.lightBlueAccent,
      child: Icon(Icons.add),
      ),
    );
  }
}

