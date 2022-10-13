import "package:flutter/material.dart";
import "package:netease_cloud_music/screen/home_plant/GradientAppBar.dart";
import "package:netease_cloud_music/screen/home_plant/HomeBody.dart";

import 'package:netease_cloud_music/service/service.dart';
import 'package:netease_cloud_music/service/user/user.dart';
// import 'package:netease_cloud_music/service/model/account.dart';

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
