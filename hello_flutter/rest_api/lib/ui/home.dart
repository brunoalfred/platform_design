import 'package:flutter/material.dart';
import 'package:rest_api/post_models.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  var id = const [];
  var title = const [];
  var body = const [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "Rest Api",
        ),
        centerTitle: true,
        elevation: 12.0,
      ),
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: new Text(
                'Title',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              subtitle: new Text('Sub-title'),
            ),
          ],
        ),
      ),
    );
  }
}
