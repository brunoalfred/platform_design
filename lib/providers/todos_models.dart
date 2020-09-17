import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:flutter/models/task.dart';
import 'package:help/models/tasks.dart';

class TodoModels extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnimodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);

  UnimodifiableListView<Task> get incompleteTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.completed));

  UnimodifiableListView<Task> get completeTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.completed));

  void addTodo(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggledComplete();

    notifyListeners();
  }

  void deleteTodo(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
