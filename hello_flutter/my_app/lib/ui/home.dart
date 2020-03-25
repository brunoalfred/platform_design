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
        body: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Hello!!!",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),
            HelloButton(),
          ],
        ));
  }
}

class HelloButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(top: 50.0),
      alignment: Alignment.center,
      child: new RaisedButton.icon(
        onPressed: () {
          enjoyButton(context);
        },
        icon: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 20.0,
        ),
        elevation: 6.0,
        label: Text("hello"),
      ),
    );
  }
}

void enjoyButton(BuildContext context) {
  var alertDialog = new AlertDialog(
    content: Text("Woow"),
    title: Text("loved"),
  );

  showDialog(context: context, builder: (BuildContext context) {
    return alertDialog;
  });
}
