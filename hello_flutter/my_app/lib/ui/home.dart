import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  var userPassword = "";
  var userName = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: Colors.blueAccent,
        title: new Center(
          child: Text(
            "click Me",
            overflow: TextOverflow.fade,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        brightness: Brightness.dark,
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Text(
                "welcome",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            new Container(
              width: 200,
              child: TextField(
                autofocus: true,
                onSubmitted: (String userInput) {
                  setState(() {
                    userName = userInput;
                  });
                },
              ),
            ),
            new Container(
              width: 200,
              child: new TextField(
                autofocus: true,
                onSubmitted: (String userInput) {
                  setState(() {
                    userPassword = userInput;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
