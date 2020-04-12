import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('First Screen'),
        centerTitle: true,
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: _firstRoute,
          child: new Text("Open Route"),
        ),
      ),
    );
  }
}


class SecondRoute extends StatefulWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: new Text(data),),);
  }
}
_firstRoute() {}
