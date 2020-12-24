import "package:flutter/material.dart";

import "package:NeteaseCloudMusic/service/service.dart";
import "package:NeteaseCloudMusic/service/user/user.dart";

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
  const HomeBody({
    Key key,
  }) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();

}

class _HomeBodyState extends State<HomeBody> {
  final userService = service.get<User>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: userService.stream$,
      builder: (context, snapshot) {
        String name = "";
        if(snapshot.data) {
          print(snapshot.data);
        }
        return Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Text("这是首页"),
        );
      }
    );
  }
}
