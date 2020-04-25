import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offline/views/gestures.dart';
import 'package:offline/views/home.dart';
import 'package:offline/views/myGesture.dart';
import 'package:offline/views/user_view.dart';

void main() => runApp(
      MaterialApp(
        title: 'Trying Navigation App With ListView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.indigoAccent,
          brightness: Brightness.light,
        ),

//      home: Home(),

//  The first Route an individual takes
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
//        Build the Home Screen,
          '/': (context) => Home(),
          '/user': (context) => User(),
          '/gestures': (context) => AnimationsGestures(),
          '/myGesture': (context) => myGesture(),
        },
      ),
    );
