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
    Playlist liked;
    List<Playlist> createdList = List<Playlist>();
    List<Playlist> collectedList = List<Playlist>();
    for (Playlist item in list) {
      if (item.creator.userId == userService.current.profile.userId) {
        if (item.specialType == 5) liked = item;
        if (item.specialType == 0) createdList.add(item);
      } else
        collectedList.add(item);
    }
    return ScrollConfiguration(
      behavior: AppScrollBehavior(),
      child: ListView(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/playlistShow");
            },
            child: Text("Click"),
          ),
          _created(createdList),
          _collected(collectedList),
        ],
      ),
    );
  }

  /// 这里用了 ListView 里面的 ListView.Builder 来创建列表（使用迭代回调 itemBuilder
  /// 函数根据数据动态渲染列表视图）。但嵌套 ListView 会报错，目前解决方式是提供
  /// NeverScrollableScrollPhysics physics 参数来禁止嵌套 ListView 的滑动。
  Widget _created(List<Playlist> list) {
    return Card(
      title: "创建歌单（${list.length}个）",
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (_, int index) => PlaylistCard(
          list[index],
          onTap: () => {print("topped")},
        ),
      ),
    );
  }

  Widget _collected(List<Playlist> list) {
    return Card(
        title: "收藏歌单（${list.length}个）",
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (_, int index) => PlaylistCard(
            list[index],
            onTap: () => {print("tapped")},
            onMorePressed: () => {print("more pressed")},
          ),
        ));
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
