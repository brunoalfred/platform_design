import 'package:flutter/cupertino.dart';
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

//  positions of the stack layout
  double x_position = 0.0;
  double y_position = 0.0;
  double boxSize = 150.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Animations and Gestures'),
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Taps: $numberTaps - DoubleTaps: $numberDoubleTaps - Long Presses: $numberLongTaps',
//             TODO: Implement the style
            style: TextStyle(),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
              left: x_position,
              top: y_position,
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(color: Colors.indigoAccent),
              ))
        ],
      ),
    );
  }

  void center() {
    x_position = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    y_position = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30.0;
  }
}
