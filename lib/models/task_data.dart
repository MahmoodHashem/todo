import 'dart:collection';
import 'dart:js_util';

import 'package:flutter/foundation.dart';
import 'package:todo/models/tasks.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newValue){
  final task = Task(name: newValue);
  _tasks.add(task);
  notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}