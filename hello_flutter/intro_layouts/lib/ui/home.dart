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
  String _email, _password;
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
            decoration: new InputDecoration(
              labelText: 'Email',
              hintText: 'enter your Email',
            ),
            validator: (value) => !value.contains('@') ? "Invalid Email" : null,
            onSaved: (value) => _email = value,
          ),
          new TextFormField(
            key: _formKey,
            decoration: new InputDecoration(
                labelText: 'Password', hintText: 'Enter a Password'),
            validator: (input) =>
                input.length < 8 ? 'not strong Password' : null,
            onSaved: (input) => _password = input,
          )
        ],
      )),
    );
  }
}
