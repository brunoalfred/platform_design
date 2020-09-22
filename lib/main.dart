import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:help/screens/home_screen.dart';
import 'package:help/providers/todos_models.dart';

void main() => runApp(TodosApp());

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {TodosModel()  ;},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}
