import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "Http Request",
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(builder: (null)),
    );
  }
}
