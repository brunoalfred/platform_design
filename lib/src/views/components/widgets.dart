import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class PlatformWidget extends StatelessWidget {
  

  const PlatformWidget(
 {   Key? key,
    required this.androidBuilder,
    required this.iosBuilder,
}): super(key: key);


  final WidgetBuilder androidBuilder;
  final WidgetBuilder iosBuilder;



  @override
  Widget build(BuildContext context) {
    switch(defaultTargetPlatform){
      case TargetPlatform.android: return androidBuilder(context);
      case TargetPlatform.iOS: return iosBuilder(context);
      default:
        assert(false, 'Unexpected platform $defaultTargetPlatform');
        return SizedBox.shrink();
    }
  }
}



void showChoices(BuildContext context, List<String> choices) {
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      showDialog<void>(
        context: context,
        builder: (context) {
          int? selectedRadio = 1;
          return AlertDialog(
            contentPadding: EdgeInsets.only(top: 12),
            content: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(choices.length, (index) {
                    return RadioListTile<int?>(
                      title: Text(choices[index]),
                      value: index,
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() => selectedRadio = value);
                      },
                    );
                  }),
                );
              },
            ),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text('CANCEL'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        },
      );
      return;
    case TargetPlatform.iOS:
      showCupertinoModalPopup<void>(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 250,
            child: CupertinoPicker(
              backgroundColor: Theme.of(context).canvasColor,
              useMagnifier: true,
              magnification: 1.1,
              itemExtent: 40,
              scrollController: FixedExtentScrollController(initialItem: 1),
              children: List<Widget>.generate(choices.length, (index) {
                return Center(
                  child: Text(
                    choices[index],
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                );
              }),
              onSelectedItemChanged: (value) {},
            ),
          );
        },
      );
      return;
    default:
      assert(false, 'Unexpected platform $defaultTargetPlatform');
  }
}