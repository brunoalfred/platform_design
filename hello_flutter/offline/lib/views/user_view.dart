import 'package:flutter/material.dart';

class User extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserState();
  }
}

class UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text("User"),
        centerTitle: true,
      ),
      body: new Center(
        child: new Column(),
      ),
    );
  }
}
