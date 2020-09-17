import 'package:flutter/material.dart';

class Task {
  String title;
  bool complete;

  Task({@required this.title, this.complete = false})

  void toggleComplete() {
    complete = !complete;
  }
}



