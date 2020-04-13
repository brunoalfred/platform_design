import 'package:flutter/material.dart';

class ListNote extends StatelessWidget {
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
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView.separated(
              itemBuilder: (contex, index) {
                return ListTile();
              },
              separatorBuilder: (_, __) => Divider(
                    height: 1.0,
                    color: Theme.of(context).primaryColor,
                  ),
              itemCount: 20),
        ));
  }
}
