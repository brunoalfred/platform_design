import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "form",
        ),
        centerTitle: true,
      ),
      body: new Form(
          child: new Column(
        children: <Widget>[
          new TextFormField(
            key: _formKey,
          )
        ],
      )),
    );
  }
}
