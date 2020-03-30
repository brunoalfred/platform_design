import 'package:flutter/material.dart';
import 'package:intro_layouts/features/features/data/models/note_for_listing.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  final notes = [
    new NoteForListing(
        noteId: '1',
        createDataTime: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 1'),
    new NoteForListing(
        noteId: '2',
        createDataTime: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 2'),
    new NoteForListing(
        noteId: '3',
        createDataTime: DateTime.now(),
        lastEditDateTime: DateTime.now(),
        noteTitle: 'Note 3'),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

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
      body: new Center(
        child: new Container(
          child: ListView.separated(
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(
                  notes[index].noteTitle,
                  style: TextStyle(
                    fontFamily: 'Liu Jian Mao Cao',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: new Text(
                  "Last Edition on ${formatDateTime(notes[index].lastEditDateTime)}",
                ),
              );
            },
            separatorBuilder: (_, __) => Divider(
              height: 1,
              color: Colors.green,
            ),
            itemCount: notes.length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
