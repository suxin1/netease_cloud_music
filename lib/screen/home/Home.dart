import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/screen/home/GradientAppBar.dart";
import "package:NeteaseMusicMobileFake/screen/home/HomeBody.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientAppBar("Home"),
          HomeBody(),
        ],
      ),
    );
  }
}
