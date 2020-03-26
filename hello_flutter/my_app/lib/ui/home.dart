import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Push Button",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.amber,
          ),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      ),
      body: new Container(
        alignment: Alignment.center,
        color: Colors.white70,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              alignment: Alignment.center,
              child: Text(
                "welcom",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
