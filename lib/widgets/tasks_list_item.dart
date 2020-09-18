import 'package:flutter/material.dart';
import 'package:help/providers/todos_models.dart';
import 'package:provider/provider.dart';

import 'package:help/models/tasks.dart';

class TaskListItem extends StatelessWidget {
final Task task;

TaskListItem({@required this.task});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var task;
    return ListTile(
      leading: Checkbox(
        value: task.completed,
        onChanged: (bool checked)
            {Provider.of<TodosModel>(context, listen: false).deleteTodo(task);},
      ),
      title: Text(task.title),
      trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            Provider.of<TodosModel>(context, listen:  false).deleteTodo(task);
          }),
    );
  }
}
