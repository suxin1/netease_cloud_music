import "package:flutter/material.dart" hide Card;

import "package:rxdart/rxdart.dart";
import "package:built_collection/built_collection.dart" show BuiltList;

// components
import "package:NeteaseCloudMusic/components/PlaylistCard.dart";
import "package:NeteaseCloudMusic/components/Card.dart";

// service
import "package:NeteaseCloudMusic/service/service.dart";
import "package:NeteaseCloudMusic/service/user/user.dart";
import "package:NeteaseCloudMusic/service/playlist/playlist.dart";
import "package:NeteaseCloudMusic/service/playlist/model.dart";

class HomeBody extends StatefulWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final userService = service.get<User>();
  final playlistService = service.get<PlaylistService>();

  @override
  void initState() {
    super.initState();
    if (userService.current.account.id != null) {
      playlistService.get(userService.current.account.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: playlistService.stream$,
        // stream: stream,
        builder: (context, snapshot) {
          BuiltList<Playlist> list = BuiltList<Playlist>();
          if (snapshot.data != null) {
            print(snapshot.data);
            list = snapshot.data;
          }
          return Container(
            color: Color(0xFFFAFAFA),
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: listView(list),
          );
        });
  }

  Widget listView(BuiltList<Playlist> list) {
    print("build");
    return ListView(
      children: [
        Card(
          title: "我的歌单",
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, int index) => PlaylistCard(list[index]),
          ),
        ),
      ],
    );
  }

  Widget scrollView(BuiltList<Playlist> list) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            sliver: SliverFixedExtentList(
              // itemExtent: 152.0,
              delegate: SliverChildBuilderDelegate(
                (_, index) => PlaylistCard(list[index]),
                childCount: list.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
