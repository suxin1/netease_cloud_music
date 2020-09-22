import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/screen/home/PlanetRow.dart";

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanetRow(),
        PlanetRow(),
        PlanetRow(),
        PlanetRow(),
        PlanetRow()
      ],
    );
  }
}
