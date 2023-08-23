import 'package:flutter/foundation.dart';
import 'package:todo/models/tasks.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  int get taskCount{
    return tasks.length;
  }

  void addTask(String newValue){
  final task = Task(name: newValue);
  tasks.add(task);
  notifyListeners();
  }

}