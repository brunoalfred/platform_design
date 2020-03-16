import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
          centerTitle: true,
        ),
        body: Center(child: Text("Hello Bruno"),)
      ),
    ));
