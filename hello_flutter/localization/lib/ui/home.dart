import 'dart:convert';
import 'dart:ffi';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localization.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(AppLocalizations.of(context).translate('first_string')),
      ),
      body: new Center(
        child: new Container(
          child:
              new Text(AppLocalizations.of(context).translate('second_string')),
        ),
      ),
    );
  }
}


