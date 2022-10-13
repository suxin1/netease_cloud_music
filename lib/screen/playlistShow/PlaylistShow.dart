import "package:flutter/material.dart";
import "package:netease_cloud_music/components/Drawers/CustomDrawer.dart";

class PlaylistShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomDrawer(child: Body()),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      child: SlidingCardsView(),
    );
  }
}

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      fallbackWidth: double.infinity,
      fallbackHeight: MediaQuery.of(context).size.height * 0.5,
    );
  }
}
