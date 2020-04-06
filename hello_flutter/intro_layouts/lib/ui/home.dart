import 'package:flutter/material.dart';
import 'package:intro_layouts/http/posts_model.dart';

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
      body: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.hasData) {
          List<Post> posts = snapshot.data;
          return 
        }
      }),
    );
  }
}
