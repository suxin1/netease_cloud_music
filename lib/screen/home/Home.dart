import "package:flutter/material.dart";
import "package:NeteaseCloudMusic/screen/home/GradientAppBar.dart";
import "package:NeteaseCloudMusic/screen/home/HomeBody.dart";

import 'package:NeteaseCloudMusic/service/service.dart';
import 'package:NeteaseCloudMusic/service/user/user.dart';
// import 'package:NeteaseCloudMusic/service/model/account.dart';

class HomeScreen extends StatelessWidget {
  final counterService = service.get<User>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: counterService.stream$,
          builder: (context, snapshot) {
            String a = "";
            if (snapshot.data != null) {
              a = snapshot.data.profile.nickname != null
                  ? snapshot.data.profile.nickname
                  : "无";
            }
            return Column(
              children: [
                GradientAppBar("Home${a}"),
                HomeBody(),
              ],
            );
          }),
    );
  }
}
