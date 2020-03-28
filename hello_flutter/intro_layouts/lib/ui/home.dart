import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  var count = 0;
  List<String> options = [
    'enjoy',
    'The',
    'Awesome',
    'features',
    'Of',
    'Flutter'
  ];
  var _toDisplay = "";

  _onPress() {
    setState(() {
      _toDisplay = options[count];
      count = count + 1;
    });
  }

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
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Text(
                "$_toDisplay",
              ),
            ),
            new Container(
              child: RaisedButton(
                onPressed: _onPress,
                textColor: Colors.white,
                child: new Container(
                  child: new Text(
                    "push",
                    style: TextStyle(
                      fontFamily: 'Liu Jian Mao Cao',
                      fontSize: 28.0,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 10.0,)
                  decoration: new BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF536DFE),
                        Color(0xFF3D5AFE),
                        Color(0xFF304FFE),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
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
