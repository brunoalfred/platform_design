import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterapp/ui/home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation In flutter',
      theme: ThemeData(
        accentColor: Colors.greenAccent,
        brightness: Brightness.light,
      ),
      home: FirstRoute(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // When navigating to the first screen, build the firstScreen Widget
        '/': (context) => Fi
      },
    ));
