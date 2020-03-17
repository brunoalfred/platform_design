import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.greenAccent,
      alignment: Alignment.center,
      child: new Text(
        "Hello Container",
        textDirection: TextDirection.ltr,
        style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
      ),
    );
  }
}
