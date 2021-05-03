import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platform_design/src/views/components/widgets.dart';
import 'package:platform_design/src/views/components/settings_tab.dart';
import 'package:platform_design/src/views/wigdets/preference_card.dart';
import 'package:platform_design/src/views/wigdets/log_out_button.dart';

class ProfileTab extends StatelessWidget {
  static const title = 'Profile';
  static const androidIcon = Icon(Icons.person);
  static const iosIcon = Icon(CupertinoIcons.profile_circled);

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                '😼',
                style: TextStyle(
                  fontSize: 80,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          PreferenceCard(
            header: 'MY INTENSITY PREFERENCE',
            content: '🔥',
            preferenceChoices: [
              'Super heavy',
              'Dial it to 11',
              "Head bangin'",
              '1000W',
              'My neighbor hates me',
            ],
          ),
          PreferenceCard(
            header: 'CURRENT MOOD',
            content: '🤘🏾🚀',
            preferenceChoices: [
              'Over the moon',
              'Basking in sunlight',
              'Hello fellow Martians',
              'Into the darkness',
            ],
          ),
          Expanded(
            child: Container(),
          ),
          LogOutButton(),
        ],
      ),
    ));
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          trailing: CupertinoButton(
        padding: EdgeInsets.zero,
        child: SettingsTab.iosIcon,
        onPressed: () {
          // This pushes the settings page as a full page modal dialog on top
          // of the tab bar and everything.
          Navigator.of(context, rootNavigator: true).push<void>(
            CupertinoPageRoute(
              title: SettingsTab.title,
              fullscreenDialog: true,
              builder: (context) => SettingsTab(),
            ),
          );
        },
      )),
      child: _buildBody(context),
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
