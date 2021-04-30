import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SongsTab extends StatefulWidget {

  static const title = 'Songs';
  static const androidIcon = Icon(Icons.music_note);
  static const iosIcon = Icon(CupertinoIcons.music_note);

  const SongsTab({Key? key, this.androidDrawer}) : super(key: key);

  final Widget? androidDrawer;


  @override
  _SongsTabState createState() => _SongsTabState();
}

class _SongsTabState extends State<SongsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}