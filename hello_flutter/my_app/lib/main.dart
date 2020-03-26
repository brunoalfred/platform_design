import 'package:flutter/material.dart';
import './ui/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First App",
      home: Home(),
      theme: ThemeData(
        accentColor: Colors.indigoAccent,
        brightness: Brightness.dark,
      primaryColor: Colors.blueAccent),
    ));
