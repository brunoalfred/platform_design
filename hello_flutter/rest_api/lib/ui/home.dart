import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'Infinite List',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: new Text('sun rise'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          );
        },
      ),
    );
  }
}
