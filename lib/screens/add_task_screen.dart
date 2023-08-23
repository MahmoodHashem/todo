import 'package:flutter/material.dart';
import 'package:todo/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? newListTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newValue){
                  newListTitle = newValue;
                },
              ),
              ElevatedButton(onPressed: (){
              Provider.of<TaskData>(context).addTask(newListTitle!);
               Navigator.pop(context);
              }, child: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
