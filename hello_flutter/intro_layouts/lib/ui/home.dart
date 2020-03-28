import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Center(
          child: new Container(
            child: new Text(
              "Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Liu Jian Mao Cao',
                fontWeight: FontWeight.w800,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {

//     // TODO: implement createState
//     return HomeState();
//   }
// }

// class HomeState extends State<Home> {
//   int counter = 0;
//   List<String> strings = ['Enjoy', 'the', 'Flutter', 'features'];
//   var _valueSet = "";

//   _onPress() {
//     setState(() {
//       _valueSet = strings[counter];
//       counter = counter < 3 ? counter + 1 : 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           title: new Container(
//             alignment: Alignment.center,
//             child: new Text("Change VAlue"),
//           ),
//         ),
//         body: new Center(
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               new Container(
//                 child: new Text(_valueSet),
//               ),
//               new RaisedButton(
//                 onPressed: _onPress,
//                 elevation: 9.0,
//                 color: Colors.blueAccent,
//                 child: Icon(
//                   Icons.find_replace,
//                   color: Colors.white,
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }
