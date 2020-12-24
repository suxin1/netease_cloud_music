import 'dart:convert';

import "package:flutter/material.dart";
import "package:NeteaseCloudMusic/components/PlanetSummary.dart";

class HomeBody extends StatefulWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<PlanetSummary> _planets = [];

  @override
  void initState() {
    Future<String> loadString =
        DefaultAssetBundle.of(context).loadString("assets/json/mock.json");
    loadString.then((String jsonString) {
      dynamic data = json.decode(jsonString);
      data.forEach((value) {
        PlanetData planet = PlanetData(
            id: value["id"],
            name: value["name"],
            location: value["location"],
            distance: value["distance"],
            gravity: value["gravity"],
            description: value["description"],
            image: value["image"],
            picture: value["picture"]);
        _planets.add(PlanetSummary(planet));
      });
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Color(0xFF736AB7),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                sliver: SliverFixedExtentList(
                  itemExtent: 152.0,
                  delegate: SliverChildBuilderDelegate(
                    (_, index) => _planets[index],
                    childCount: _planets.length,
                  ),
                ),
              )
            ],
          )

          // child: ListView.builder(
          //   itemCount: _planets.length,
          //   itemBuilder: (_, int index) => _planets[index],
          //   itemExtent: 152.0,
          //   padding: EdgeInsets.symmetric(vertical: 16.00),
          // ),

          ),
    );
  }
}
