import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

final _formKey = GlobalKey<FormState>();

class _HomeState extends State<Home> {
  String _username, _password;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(
          "Form",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Open Sans',
            fontSize: 24.0,
          ),
        ),
      ),
      body: new Form(
        key: _formKey,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              key: _formKey,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Your Email',
              ),
              validator: (value) =>
                  !value.contains('@') ? 'Not a valid email' : null,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'username',
                hintText: 'Enter Username',
              ),
              validator: (input) {
                if (input.isEmpty) {
                  return 'Please Enter Username';
                }
                return null;
              },
              onSaved: (input) => _username = input,
            ),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
              validator: (input) =>
                  input.length < 8 ? 'Less Than Eight Characters' : null,
              onSaved: (input) => _password = input,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: _submit(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _submit() {
  if (_formKey.currentState.validate()) {
    _formKey.currentState.save()
    /*Process Data*/}
}
