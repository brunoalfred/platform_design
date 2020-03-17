import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Hello Container",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
          new Text(
            "Welcome",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20.0),
          ),
          new Container(
            alignment: Alignment.center,
            child: new Text(
              "Me",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 25.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
