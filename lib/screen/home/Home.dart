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

class HomeBody extends StatelessWidget {
  final userService = service.get<User>();
  final playlistService = service.get<Playlist>();

  Stream stream;
  HomeBody() {
    print(userService.current);
    if (userService.current.account != null) {
      playlistService.get(userService.current.account.id);
    }
    stream = Rx.merge([userService.stream$, playlistService.stream$]);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: playlistService.stream$,
        // stream: stream,
        builder: (context, snapshot) {
          String name = "";
          if (snapshot.data != null) {
            print(snapshot.data);
          }
          return Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Text("这是首页"),
          );
        });
  }
}
