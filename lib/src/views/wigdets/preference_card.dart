import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platform_design/src/views/wigdets/pressable_card.dart';
import 'package:platform_design/src/views/components/widgets.dart';

class PreferenceCard extends StatelessWidget {
  const PreferenceCard({
    required this.header,
    required this.content,
    required this.preferenceChoices,
  });

  final String header;
  final String content;
  final List<String> preferenceChoices;

  @override
  Widget build(BuildContext context) {
    return PressableCard(
      color: Colors.green,
      flattenAnimation: AlwaysStoppedAnimation(0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 120,
            width: 250,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  content,
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black12,
              height: 40,
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.centerLeft,
              child: Text(
                header,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
      onPressed: (){
         showChoices(context, preferenceChoices);
      },
    );

  }
}
