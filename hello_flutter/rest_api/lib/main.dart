import 'package:flutter/material.dart';
import 'package:rest_api/ui/home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rest Api Consuming',
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
          brightness: Brightness.light,
        ),
    home: Home(),  ),
    );
