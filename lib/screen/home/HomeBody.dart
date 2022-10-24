import "package:flutter/material.dart" hide Card;

import "package:rxdart/rxdart.dart";
import "package:built_collection/built_collection.dart" show BuiltList;
import "package:netease_cloud_music/patched/scrollBehavior.dart";

// components
import "package:netease_cloud_music/components/PlaylistCard.dart";
import "package:netease_cloud_music/components/Card.dart";

// service
import "package:netease_cloud_music/service/service.dart";
import "package:netease_cloud_music/service/user/user.dart";
import "package:netease_cloud_music/service/playlist/playlist.dart";
import "package:netease_cloud_music/service/playlist/model.dart";

import "../../config/routes.dart";

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  HomeBodyState createState() => HomeBodyState();
}

class HomeBodyState extends State<HomeBody> {
  final userService = service.get<User>();
  final playlistService = service.get<PlaylistService>();

  @override
  void initState() {
    super.initState();
    if (userService.current.account.id != null) {
      playlistService.get(userService.current.account.id as int);
    }
  }

  void _onCardPress(int id) {
    String path = Routes.format(Routes.playlistDetail, {"id": id});
    Navigator.pushNamed(context, path);
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
            color: const Color(0xFFFAFAFA),
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: listView(list),
          );
        });
  }

  Widget listView(BuiltList<Playlist> list) {
    Playlist liked;
    List<Playlist> createdList = <Playlist>[];
    List<Playlist> collectedList = <Playlist>[];
    for (Playlist item in list) {
      if (item.creator?.userId == userService.current.profile.userId) {
        if (item.specialType == 5) liked = item;
        if (item.specialType == 0) createdList.add(item);
      } else {
        collectedList.add(item);
      }
    }

    return ScrollConfiguration(
      behavior: AppScrollBehavior(),
      child: ListView(
        children: [
          _createdList(createdList),
          _collectedList(collectedList),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }

  Widget _createdList(List<Playlist> list) {
    return Card(
        title: "创建歌单（${list.length}个）",
        child: Column(
          children: list
              .map((item) => PlaylistCard(item, onTap: _onCardPress))
              .toList(),
        ));
  }

  Widget _collectedList(List<Playlist> list) {
    return Card(
        title: "收藏歌单（${list.length}个）",
        child: Column(
          children: list
              .map((item) => PlaylistCard(item, onTap: _onCardPress))
              .toList(),
        ));
  }

// Widget scrollView(BuiltList<Playlist> list) {
//   return Container(
//     child: CustomScrollView(
//       slivers: [
//         SliverPadding(
//           padding: EdgeInsets.symmetric(vertical: 16.0),
//           sliver: SliverFixedExtentList(
//             itemExtent: 152.0,
//             delegate: SliverChildBuilderDelegate(
//               (_, index) => PlaylistCard(list[index],
//                   onTap: () => {}, onMorePressed: () => {}),
//               childCount: list.length,
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
}
