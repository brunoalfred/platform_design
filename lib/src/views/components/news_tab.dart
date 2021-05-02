import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platform_design/src/utils.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:platform_design/src/views/components/widgets.dart';

class NewsTab extends StatefulWidget {
  static const title = 'News';
  static const androidIcon = Icon(Icons.library_books);
  static const iosIcon = Icon(CupertinoIcons.news);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  static const _itemsLength = 20;

  late final List<Color> colors;
  late final List<String> titles;
  late final List<String> contents;

  @override
  void initState() {
    super.initState();
    colors = getRandomColors(_itemsLength);
    titles = List.generate(_itemsLength, (index) => generateRandomHeadline());
    contents =
        List.generate(_itemsLength, (index) => lorem(paragraphs: 1, words: 24));
    super.initState();
  }

  Widget _listBuilder(BuildContext context, int index) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Card(
          elevation: 1.5,
          margin: EdgeInsets.fromLTRB(6, 12, 6, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: InkWell(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: colors[index],
                        child: Text(
                          titles[index].substring(0, 1),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titles[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 8)),
                            Text(
                              contents[index],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),
        ));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(NewsTab.title),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _itemsLength,
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView.builder(
        itemCount: _itemsLength,
        itemBuilder: _listBuilder,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
