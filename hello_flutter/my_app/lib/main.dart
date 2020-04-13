import 'package:flutter/material.dart';
import 'package:my_app/views/home.dart';

void main() => runApp(MaterialApp(
      title: 'Rest API consuming',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        brightness: Brightness.light,
      ),
      home: ListNote(),
    ));
