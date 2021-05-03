import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_design/src/views/components/songs_tab.dart';
import 'package:platform_design/src/views/components/widgets.dart';
import 'package:platform_design/src/views/components/news_tab.dart';
import 'package:platform_design/src/views/components/profile_tab.dart';
import 'package:platform_design/src/views/components/settings_tab.dart';

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
          case 0:
            return CupertinoTabView(
              defaultTitle: SongsTab.title,
              builder: (context) => SongsTab(key: songsTabKey),
            );
          case 1:
            return CupertinoTabView(
              defaultTitle: NewsTab.title,
              builder: (context) => NewsTab(),
            );
          case 2:
            return CupertinoTabView(
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
      androidBuilder: _buildAndroidHomePage,
      iosBuilder: _buildIosHomePage,
    );
  }
}

class _AndroidDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.green.shade800,
                  size: 96,
                ),
              ),
            ),
            ListTile(
              leading: SongsTab.androidIcon,
              title: Text(SongsTab.title),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: NewsTab.androidIcon,
              title: Text(NewsTab.title),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                    MaterialPageRoute(builder: (context) => NewsTab()));
              },
            ),
            ListTile(
              leading: ProfileTab.androidIcon,
              title: Text(ProfileTab.title),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                    MaterialPageRoute(builder: (context) => ProfileTab()));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(),
            ),
             ListTile(
            leading: SettingsTab.androidIcon,
            title: Text(SettingsTab.title),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => SettingsTab()));
            },
          ),
          ]),
    );
  }
}
