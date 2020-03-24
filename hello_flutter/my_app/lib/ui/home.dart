import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: new Center(
          child: new Text(
            "welcome",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.green,
              fontSize: 20.0,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: new Center(
        child: RaisedButton.icon(
          onPressed: () {
            print("you email is sent!");
          },
          icon: Icon(Icons.mail),
          label: Text("mail me!"),
          autofocus: true,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
