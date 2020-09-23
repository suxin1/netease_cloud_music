import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/screen/home/PlanetRow.dart";

class Detail extends StatelessWidget {
  final PlanetData paramData;
  Detail(this.paramData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () => Navigator.pop(context),child: Text("Go back")),
      )
    );
  }
}