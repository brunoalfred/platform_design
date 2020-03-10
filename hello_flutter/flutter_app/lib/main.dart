// This is the main function which is excute at first,
// it doesnt return anything "voidType"
// importing the packages to be used
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class 


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('EasyList'),
            ),
            body: Column(
              children: [
                widget(
                  children: [
                    Container(
                      margin: EdgeInsets.all(100.0),
                      child: RaisedButton(
                      onPressed: () {},
                      child: Text('Add Msosi'),
                    ),,)
                 
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/food.jpg"),
                          Text('Food Paradise')
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
