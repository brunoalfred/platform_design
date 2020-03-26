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
            color: Colors.white,
          ),
          textAlign: TextAlign.right,
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
              width: 390.0,
              height: 70.0,
              child: Text(
                "welcome",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 40.0,
                  fontFamily: 'Baloon Da 2',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            new Container(),
          ],
        ),
      ),
    );
  }
}
