import "package:flutter/material.dart";
import "package:sliding_up_panel/sliding_up_panel.dart";
import "package:NeteaseCloudMusic/screen/home/HomeBody.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: HomeBody(),
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
