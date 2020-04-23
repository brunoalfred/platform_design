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
  double xPosition = 0.0;
  double yPosition = 0.0;
  double boxSize = 150.0;

  @override
  Widget build(BuildContext context) {
    if (xPosition == 0.0) {
      center(context);
    }
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
        body: GestureDetector(
          onTap: () {
            setState(() {
              numberTaps++;
            });
          },
          onDoubleTap: () {
            setState(() {
              numberDoubleTaps++;
            });
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                left: xPosition,
                top: yPosition,
                child: Container(
                  width: boxSize,
                  height: boxSize,
                  decoration: BoxDecoration(color: Colors.indigoAccent),
                ),
              )
            ],
          ),
        ));
  }

  void center(BuildContext context) {
    xPosition = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    yPosition = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30.0;
    setState(() {
      xPosition = xPosition;
      yPosition = yPosition;
    });
  }
}
