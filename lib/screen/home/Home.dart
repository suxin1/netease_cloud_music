import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/screen/home/GradientAppBar.dart";
import "package:NeteaseMusicMobileFake/screen/home/HomeBody.dart";

import 'package:NeteaseMusicMobileFake/service/service.dart';
import 'package:NeteaseMusicMobileFake/service/counter.dart';

class HomeScreen extends StatelessWidget {
  final counterService = service.get<Counter>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: counterService.stream$,
          builder: (context, snapshot) {
            return Column(
              children: [
                GradientAppBar("Home${snapshot.data}"),
                HomeBody(),
              ],
            );
          }),
    );
  }
}
