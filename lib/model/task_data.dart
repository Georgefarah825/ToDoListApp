import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: 'Buy milk', isDone: false),
    Tasks(name: 'Buy eggs', isDone: false),
    Tasks(name: 'Buy bread', isDone: false),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
