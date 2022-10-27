import 'package:built_collection/built_collection.dart';
import "package:flutter/material.dart";
import 'package:netease_cloud_music/components/Ink.dart';
import 'package:netease_cloud_music/service/playlist/model.dart';
import 'package:netease_cloud_music/service/artist/model.dart';
import "package:netease_cloud_music/theme/TextType.dart";

import  "../theme/default.dart";

class TrackCard extends StatelessWidget {
  final Track track;
  final int index;

  final GestureTapCallback? onTap;
  final GestureTapCallback? onMorePressed;

  const TrackCard(this.track, this.index, {this.onTap, this.onMorePressed});

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
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(Spacing.common),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  index.toString(),
                  style: TextType.secondary,
                ),
                Container(
                  padding: const EdgeInsets.only(left: Spacing.common),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(track.name, style: TextType.common),
                      Text(getArtistStr(track), style: TextType.secondary),
                    ],
                  ),
                )
              ],
            ),
            _button(),
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return TapResponse(
      onTap: () {},
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 30,
          minHeight: 30,
          minWidth: 30,
          maxWidth: 30,
        ),
        padding: const EdgeInsets.all(0),
        child: const Icon(
          Icons.more_vert,
          color: Colors.grey,
          size: 20,
        ),
      ),
    );
  }

  String getArtistStr(Track track) {
    String re = "";
    for (int i=0; i < track.ar.length; i ++) {
      Artist ar = track.ar[i];
      bool last = i == (track.ar.length - 1);
      String suffix = last ?"":"，";
      re = re + (ar.name as String) + suffix;
    }
    return re;
  }
}
