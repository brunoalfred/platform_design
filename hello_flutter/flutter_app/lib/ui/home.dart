import 'dart:js';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('First Screen'),
        centerTitle: true,
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            // navigate to the second screen using a named route
            Navigator.pushNamed(context, '/second');
          },
          child: new Text("Open Route"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Second Route"),
        centerTitle: true,
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: new Text("Go Back!"),
        ),
      ),
    );
  }
}
