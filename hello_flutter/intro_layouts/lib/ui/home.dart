import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Welcome",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
          new Text(
            "Classes",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "columns",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Text(
                "rows",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,

                ),
              )
            ],
          )
          
        ],

      ),
    );
  }
}
