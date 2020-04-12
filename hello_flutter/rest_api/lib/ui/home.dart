import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

final titles = [
  'bike',
  'boat',
  'bus',
  'car',
  'railway',
  'run',
  'subway',
  'transit',
  'walk'
];

final icons = [
  Icons.directions_bike,
  Icons.directions_boat,
  Icons.directions_bus,
  Icons.directions_car,
  Icons.directions_railway,
  Icons.directions_run,
  Icons.directions_subway,
  Icons.directions_transit,
  Icons.directions_walk
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(
            'Infinite List',
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(icons[index]),
                  title: new Text(titles[index]),
                ),
              );
            }));
  }
}
