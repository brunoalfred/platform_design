// This is the main function which is excute at first when
// importing the packages to be used
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
      ),
    );
  }
}
