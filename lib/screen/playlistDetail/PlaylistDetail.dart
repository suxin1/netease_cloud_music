import "dart:ui";
import "package:flutter/material.dart";

import "../../components/TrackCard.dart";

import "../../service/service.dart";
import "../../service/playlist/model.dart";
import "../../service/playlist/playlist.dart";
import "../../theme/TextType.dart";

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
          String stateName = snapshot.connectionState.name;
          if (snapshot.data.id != null) {
            Playlist playlist = snapshot.data;
            return Body(playlist);
          }
          if (stateName == "active") {
            return Text("加载中");
          }
          return Text("加载错误");
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
    return MediaQuery.removePadding( // 移除 ListView 顶部 padding
      context: context,
      removeTop: true,
      child: ListView(
        children: [
          _bannerContainer(context),
          _list(),
        ],
      ),
    );
  }

  Widget _bannerContainer(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: false,
      child: Container(
        width: width,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(color: Colors.black45),
        // padding: EdgeInsets.only(left: 20),
        child: _bannerContent(context),
      ),
    );
  }

  Widget _bannerContent(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Image.network(
            playlist.coverImgUrl as String,
            errorBuilder: (a, b, c) => Container(color: Colors.red),
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
              child: Opacity(
                opacity: 0.6,
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            child: _middle(context),
          ),
        ),
      ],
    );
  }

  Widget _thumbnail(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width * 0.3,
        height: width * 0.3,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(playlist.coverImgUrl as String, fit: BoxFit.cover,),
        ));
  }

  Widget _middle(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _thumbnail(context),
        Container(
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
    );
  }

  Widget _list() {
    Map<int, dynamic> maps = playlist.tracks!.asMap();

    return Container(
      child: ListView(
        children: maps.keys
            .map((index) => TrackCard(maps[index] as Track, index + 1))
            .toList(),
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
