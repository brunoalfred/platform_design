import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platform_design/src/views/wigdets/hero_animating_song_card.dart';
import 'package:platform_design/src/views/wigdets/song_placeholder_tile.dart';

class SongDetailTab extends StatelessWidget {
  const SongDetailTab(
      {required this.id, required this.song, required this.color});

  final int id;
  final String song;
  final Color color;

  Widget _buildBody() {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: id,
            child: HeroAnimatingSongCard(
              song: song,
              color: color,
              heroAnimation: AlwaysStoppedAnimation(1),
            ),
            flightShuttleBuilder: (context, animation, flightDirection,
                fromHeroContext, toHeroContext) {
              return HeroAnimatingSongCard(
                song: song,
                color: color,
                heroAnimation: animation,
              );
            },
          ),
           Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 16, bottom: 8),
                    child: Text(
                      'You might also like:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }
                // Just a bunch of boxes that simulates loading song choices.
                return SongPlaceholderTile();
              },
            ),
          ),
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
