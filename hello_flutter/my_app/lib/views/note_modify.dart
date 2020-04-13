import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("New Page"),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(12.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(
                hintText: 'Note Title',
              ),
            ),
            new Container(
              height: 30.0,
            ),
            new TextField(
              decoration: InputDecoration(
                hintText: 'Note Context',
              ),
            ),
            RaisedButton(onPressed: () {})
          ],
        ),
      ),
    );
  }
}
