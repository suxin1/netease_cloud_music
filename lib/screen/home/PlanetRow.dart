import "package:flutter/material.dart";

final planetThumbnail = Container(
  margin: EdgeInsets.symmetric(vertical: 16.0),
  alignment: FractionalOffset.centerLeft,
  child: Image(
    image: AssetImage("assets/images/mars.png"),
    height: 92.00,
    width: 92.00
  ),
);

final planetCard = Container(
  height: 124.0,
  margin: EdgeInsets.only(left: 46.0),
  decoration: BoxDecoration(
    color: Color(0xFF333366),
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow:[
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10.0,
        offset: Offset(0.0, 10.0),
      )
    ]
  ),
);

class PlanetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Stack(
        children: [
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}

