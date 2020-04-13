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
      body: new Center(
        child: new ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: new Text(
                  "data",
                  textAlign: TextAlign.center,
                ),
                subtitle: new Text(
                  "Date Generated",
                  textAlign: TextAlign.left,
                ),
              );
            },
            separatorBuilder: (_, __) => Divider(
                  height: 1.0,
                  color: Theme.of(context).primaryColor,
                ),
            itemCount: 20),
      ),
    );
  }
}
