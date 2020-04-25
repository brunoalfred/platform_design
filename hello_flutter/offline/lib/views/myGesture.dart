import 'package:flutter/material.dart';

// ignore: camel_case_types
class myGesture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myGestureState();
  }
}

// ignore: camel_case_types
class myGestureState extends State<myGesture> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Some more Gestures'),
      ),
      bottomNavigationBar: Material(),
    );
  }
}
