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
      body: new Column(
        children: <Widget>[
          new TextField(
            decoration: InputDecoration(
              hintText: 'Note Title',
            ),
          ),
          new TextField(
            decoration: InputDecoration(hintText: 'Note Context'),
          )
        ],
      ),
    );
  }
}
