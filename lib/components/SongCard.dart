import 'package:built_collection/built_collection.dart';
import "package:flutter/material.dart";
import 'package:netease_cloud_music/components/Ink.dart';
import 'package:netease_cloud_music/service/playlist/model.dart';
import 'package:netease_cloud_music/service/artist/model.dart';
import "package:netease_cloud_music/theme/TextType.dart";

class SongCard extends StatelessWidget {
  final Song song;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onMorePressed;

  const SongCard(this.song, {this.onTap, this.onMorePressed});

  void handleCardPress(BuildContext context) {
    // TODO Play this song;
    print("play");
  }

  void handleMoreButtonPress(BuildContext context) {
    print("more");
  }

  String getArtistName(BuiltList<Artist> artists) {
    return "artist name";
  }

  @override
  Widget build(BuildContext context) {
    return TapResponse(
      onTap: () {
        this.handleCardPress(context);
      },
      child: Container(
          padding: const EdgeInsets.only(
              left: 16, top: 8.0, right: 8.0, bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          )),
    );
  }

  Widget _button(BuildContext context) {
    return TapResponse(
        child: Container(
          constraints: const BoxConstraints(
              maxHeight: 30, minHeight: 30, maxWidth: 30, minWidth: 30),
          padding: const EdgeInsets.all(0),
          child: const Icon(Icons.more_vert, color: Colors.grey, size: 20),
        ),
        onTap: () {
          handleMoreButtonPress(context);
        });
  }

  Widget _description() {
    String artistsStr = getArtistName(song.ar);
    return Container(
      margin: const EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Text(
                song.name,
                overflow: TextOverflow.ellipsis,
                style: TextType.common,
              )),
           const SizedBox(
            height: 4,
          ), // space between vertical item
          Text(
            artistsStr,
            style: TextType.smallSecondary,
          )
        ],
      ),
    );
  }
}
