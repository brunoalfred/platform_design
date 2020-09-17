import 'package:flutter/material.dart';
import 'package:help/providers/todos_models.dart';
import 'package:provider/provider.dart';

import 'package:flutter/models/tasks.dart';
import 'package:flutter/providers/tasks_list_item.dart';

class TaskListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: Checkbox(
        value: task.completed,
        onChanged: (bool checked)
            {Provider.of<TodoModels>(context, listen: false).deleteTodo(task)},
      ),
      title: Text(task.title),
      trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            Provider.of<TodoModels>(context, listen:  false).deleteTodo(task)
          }),
    );
  }
}
