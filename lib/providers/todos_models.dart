import 'dart:collection';

import 'package:flutter/material.dart';

// import 'package:Todo-App/models/task.dart';
import 'package:help/models/tasks.dart';

class TodosModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Finish the app'),
    Task(title: 'Write a blog post'),
    Task(title: 'Share with community'),
  ];

  UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);

  UnmodifiableListView<Task> get incompleteTasks =>
      UnmodifiableListView(_tasks.where((todo) => !todo.complete));

  UnmodifiableListView<Task> get completeTasks =>
      UnmodifiableListView(_tasks.where((todo) => todo.complete));

  void addTodo(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = _tasks.indexOf(task);
    _tasks[taskIndex].toggleComplete();

    notifyListeners();
  }

  void deleteTodo(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
