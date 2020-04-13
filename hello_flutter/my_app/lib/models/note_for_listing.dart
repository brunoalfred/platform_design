import 'package:flutter/material.dart';

class NoteForListing {
  String noteId;
  String noteTitle;
  DateTime createDateTime;
  DateTime lastEditDateTime;

  NoteForListing({
    @required this.noteId,
    @required this.noteTitle,
    @required this.createDateTime,
    this.lastEditDateTime,
  });
}
