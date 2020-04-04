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
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              key: _formKey,
              decoration: const InputDecoration(
                hintText: 'Enter Your Email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Please Enter some Text";
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {/*Process Data*/}
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
