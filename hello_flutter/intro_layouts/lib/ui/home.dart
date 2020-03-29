import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Container(
            child: new Text(
              "List Of Notes",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                backgroundColor: Colors.blueAccent,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
