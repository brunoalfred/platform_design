import 'package:flutter/material.dart';

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
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "Rest Api",
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Card(
        child: ListView(
          children: <Widget>[ListTile(title: ,)],
        ),
      ),
    );
  }
}
