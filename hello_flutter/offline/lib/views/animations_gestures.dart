import 'package:flutter/material.dart';

class AnimationsGestures extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnimationsGesturesState();
  }
}

class _AnimationsGesturesState extends State<AnimationsGestures> {
  int numberTaps = 0;
  int numberDoubleTaps = 0;
  int numberLongTaps = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Animations and Gestures'),
      ),
      bottomNavigationBar: Material(),
    );
  }
}
