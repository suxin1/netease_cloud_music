import "package:flutter/material.dart";

import "package:rxdart/rxdart.dart";
import "package:NeteaseCloudMusic/service/service.dart";
import "package:NeteaseCloudMusic/service/user/user.dart";
import "package:NeteaseCloudMusic/service/playlist/playlist.dart";
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
  final playlistService = service.get<Playlist>();

  @override
  void initState() {
    if (userService.current.account != null) {
      playlistService.get(userService.current.account.id);
    }
  }

  Widget buildCard(var data)  {
    return Text(data.name);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: playlistService.stream$,
        // stream: stream,
        builder: (context, snapshot) {
          var list = [];
          if (snapshot.data != null) {
            print(snapshot.data);
            list = snapshot.data.playlist;
          }
          return Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    sliver: SliverFixedExtentList(
                      itemExtent: 152.0,
                        delegate: SliverChildBuilderDelegate(
                            (_, index) => buildCard(list[index]),
                          childCount: list.length,
                        ),
                    ),
                  ),
                ],
              ));
        });
  }
}
