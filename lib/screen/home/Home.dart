import "package:flutter/material.dart";

import "package:rxdart/rxdart.dart";
import "package:built_collection/built_collection.dart" show BuiltList;

import "package:NeteaseCloudMusic/service/service.dart";
import "package:NeteaseCloudMusic/service/user/user.dart";
import "package:NeteaseCloudMusic/service/playlist/playlist.dart";
import "package:NeteaseCloudMusic/service/playlist/model.dart";
// import "package:NeteaseCloudMusic/service/model/playlist.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: HomeBody(),
    );
  }
}

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

  Widget buildCard(var data) {
    return Text(data.name);
  }

  Widget card(Playlist data) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: FractionalOffset(.5, -0.5),
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              Container(
                height: 60,
                width: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(data.coverImgUrl),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name),
                Row(
                  children: [
                    Text("${data.trackCount}", style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text(",by ${data.creator.nickname}",style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: listView(list));
        });
  }

  Widget listView(BuiltList<Playlist> list) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (_, int index) => card(list[index]),
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
                (_, index) => buildCard(list[index]),
                childCount: list.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
