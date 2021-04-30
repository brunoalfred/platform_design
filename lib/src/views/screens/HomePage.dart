import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_design/src/views/components/songs_tab.dart';
import 'package:platform_design/src/views/components/widgets.dart';
import 'package:platform_design/src/views/components/news_tab.dart';
import 'package:platform_design/src/views/components/profile_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final songsTabKey = GlobalKey();

  Widget _buildAndroidHomePage(BuildContext context) {
    return SongsTab(
      key: songsTabKey,
      androidDrawer: _AndroidDrawer(),
    );
  }

  Widget _buildIosHomePage(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            label: SongsTab.title,
            icon: SongsTab.iosIcon,
          ),
          BottomNavigationBarItem(
            label: NewsTab.title,
            icon: NewsTab.iosIcon,
          ),
          BottomNavigationBarItem(
            label: ProfileTab.title,
            icon: ProfileTab.iosIcon,
          )
        ],
      ),
      tabBuilder: (contex, index) {
        switch (index) {
          case 0: return CupertinoTabView(
            defaultTitle: SongsTab.title,
            builder: (context) => SongsTab(key: songsTabKey),
          );
          case 1: return CupertinoTabView(
            defaultTitle: NewsTab.title,
             builder: (context) => NewsTab(),
          );
          case 2: return CupertinoTabView(
            defaultTitle: ProfileTab.title,
            builder: (context) => ProfileTab(),
          );
          default: 
            assert(false, 'Unexpected tab');
            return SizedBox.shrink();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
        androidBuilder: _buildAndroidHomePage, iosBuilder: _buildIosHomePage);
  }
}

class _AndroidDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
