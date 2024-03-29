// import 'dart:js';

import "package:flutter/material.dart";
import "package:netease_cloud_music/service/playlist/model.dart";
import 'package:netease_cloud_music/theme/TextType.dart';
import "package:netease_cloud_music/patched/noSplash.dart";
import "package:netease_cloud_music/components/Ink.dart";
import "../config/routes.dart";

class PlaylistCard extends StatelessWidget {
  final Playlist playlist;
  final GestureTapCallback onTap;
  final GestureTapCallback onMorePressed;

  const PlaylistCard(this.playlist,
      {required this.onTap, required this.onMorePressed});

  void handleCardPress(BuildContext context) {
    Navigator.pushNamed(context, "/playlist/${playlist.id}");
  }

  @override
  Widget build(BuildContext context) {
    return TapResponse(
      onTap: () {
        handleCardPress(context);
      },
      child: Container(
        // color: Colors.blue,
        padding:
            const EdgeInsets.only(left: 16, top: 8.0, right: 8.0, bottom: 8.0),
        // height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _thumbnail(),
            _description(),
            Spacer(),
            _button(),
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return TapResponse(
      onTap: onMorePressed,
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

  Container _description() {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 200),
            child: Text(
              playlist.name as String,
              overflow: TextOverflow.ellipsis,
              style: TextType.common,
            ),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text(
                "${playlist.trackCount}",
                style: TextType.smallSecondary,
              ),
              Text(
                ", by ${playlist.creator?.nickname}",
                style: TextType.smallSecondary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _thumbnail() {
    return Stack(
      alignment: FractionalOffset(.5, -0.5),
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(8.0)),
        ),
        Container(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(playlist.coverImgUrl as String),
          ),
        ),
      ],
    );
  }
}
