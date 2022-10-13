import "package:flutter/material.dart";
import "package:sliding_up_panel/sliding_up_panel.dart";
import "package:netease_cloud_music/screen/home/HomeBody.dart";
import 'package:netease_cloud_music/components/Drawers/CustomDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomDrawer(child: HomeBody()),
    );
  }

  Widget _withSlideUpPanel() {
    return SlidingUpPanel(
      body: HomeBody(),
      panel: Center(child: Text("sliding")),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    );
  }
}
