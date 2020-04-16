import 'dart:js';

import 'package:flutter/material.dart';
import 'package:offline/views/home.dart';
import 'package:offline/views/login.dart';

void main() => runApp(
      MaterialApp(
        title: 'Connectivity',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.cyanAccent,
          brightness: Brightness.light,
        ),
        initialRoute: '/login',
        routes: <String, WidgetBuilder>{
          '/login': (context) => Login(),
          '/home': (context) => Home()
        },
      ),
    );
