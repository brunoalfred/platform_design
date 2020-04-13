import 'package:flutter/material.dart';
import 'package:my_app/models/note_for_listing.dart';

class ListNote extends StatelessWidget {
  final notes = [
    new NoteForListing(
      noteId: "1",
      noteTitle: "Note 1",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "2",
      noteTitle: "Note 2",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
        noteId: "3",
        noteTitle: "Note 3",
        createDateTime: DateTime.now(),
        lastEditDateTime: DateTime.now()),
    new NoteForListing(
      noteId: "4",
      noteTitle: "Note 4",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "5",
      noteTitle: "Note 5",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "6",
      noteTitle: "Note 6",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "7",
      noteTitle: "Note 7",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "8",
      noteTitle: "Note 8",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "9",
      noteTitle: "Note 9",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
    new NoteForListing(
      noteId: "10",
      noteTitle: "Note 10",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'List of Notes',
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,elevation: 10.0,
      ),
      body: new Container(
        child: new ListView.separated(
            itemBuilder: (contex, index) {
              return ListTile(
                title: new Text(notes[index].noteTitle),
                subtitle: new Text(
                    'Last edited date is ${notes[index].lastEditDateTime}'),
              );
            },
            separatorBuilder: (_, __) => Divider(
                  height: 1.0,
                  color: Theme.of(context).primaryColor,
                ),
            itemCount: notes.length),
      ),
    );
  }
}
