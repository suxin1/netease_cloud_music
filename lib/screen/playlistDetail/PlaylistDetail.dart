import "dart:ui";
import "package:flutter/material.dart";
import "package:netease_cloud_music/components/Ink.dart";

import "../../service/service.dart";
import "../../service/playlist/model.dart";
import "../../service/playlist/playlist.dart";
import "../../theme/TextType.dart";
import "../../theme/default.dart";

class PlaylistDetail extends StatelessWidget {
  final String playlistID;
  final playlistService = service.get<PlaylistService>();

  PlaylistDetail(this.playlistID) {
    playlistService.detail(playlistID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: StreamBuilder(
        stream: playlistService.playlistStream$,
        builder: (context, snapshot) {
          if(snapshot.data.id == null) {
            return Text("加载中");
          }
          Playlist playlist = snapshot.data;
          return Body(playlist);
        },
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Playlist playlist;
  Body(this.playlist);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          _banner(context),
          _list(),
        ],
      ),
    );
  }

  Widget _thumbnail(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      height: width * 0.3,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _banner(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(color: Colors.red),
        padding: EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _thumbnail(context),
            Container(
              color: Colors.amber,
              height: width * 0.3,
              width: width * 0.7 - 20,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: width * 0.7),
                    child: Text(
                      playlist.name as String,
                      style: TextType.title,
                    ),
                  ),
                  Text(
                    "简介",
                    style: TextType.smallSecondary,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget _list() {
    return Container(
      child: Column(
        children: [
          _song(0),
          _song(1),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
          _song(2),
        ],
      ),
    );
  }

  Widget _song(int index) {
    return TapResponse(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(Spacing.common),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    index.toString(),
                    style: TextType.secondary,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: Spacing.common),
                    child: Column(
                      children: [
                        Text("名称", style: TextType.common),
                        Text("歌手", style: TextType.secondary),
                      ],
                    ),
                  )
                ],
              ),
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
}

// class SlidingCardsView extends StatefulWidget {
//   @override
//   _SlidingCardsViewState createState() => _SlidingCardsViewState();
// }
//
// class _SlidingCardsViewState extends State<SlidingCardsView> {
//   @override
//   Widget build(BuildContext context) {
//     return Placeholder(
//       fallbackWidth: double.infinity,
//       fallbackHeight: MediaQuery.of(context).size.height * 0.5,
//     );
//   }
// }
