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
//  position of the box
  double xPosition = 0.0;
  double yPosition = 0.0;
  double boxSize = 100;

  int tapsNumber = 0;
  int doubleTapsNumber = 0;
  int longPressNumber = 0;

  @override
  Widget build(BuildContext context) {
    if (xPosition == 0) {
      center(context);
    }

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Some more Gestures'),
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: new Text(
            'Taps: $tapsNumber',
          ),
        ),
      ),
      body: GestureDetector(
        child: new Stack(
          children: <Widget>[
            Positioned(
              left: xPosition,
              top: yPosition,
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
