import 'package:flutter/material.dart';

import 'ui/home.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primarySwatch: Colors.orange,),
      home: Home(),
    ));
