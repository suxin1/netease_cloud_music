import "package:flutter/material.dart";

final baseTextStyle = const TextStyle(fontFamily: "Poppins");

final headerTextStyle = baseTextStyle.copyWith(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);

final regularTextStyle = baseTextStyle.copyWith(
    color: const Color(0xffb6b2df), fontSize: 9.0, fontWeight: FontWeight.w400);

final subHeaderTextStyle = regularTextStyle.copyWith(
  fontSize: 12.0,
);

Widget _planetCardRow({String text, String img}) {
  return Row(
    children: [
      Image.asset(img, height: 12,),
      Container(width: 8.0),
      Text(text, style: regularTextStyle)
    ],
  );
}

Stack planetFactory(PlanetData data) {
  Widget planetThumbnail = Container(
    margin: EdgeInsets.symmetric(vertical: 16.0),
    alignment: FractionalOffset.centerLeft,
    child: Image(image: AssetImage(data.image), height: 92.00, width: 92.00),
  );

  Widget planetCard = Container(
    height: 124.0,
    margin: EdgeInsets.only(
      left: 46.0,
    ),
    child: Container(
      constraints: BoxConstraints.expand(),
      margin: EdgeInsets.fromLTRB(65.0, 16.0, 16.0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.name, style: headerTextStyle),
          Container(
            height: 10.0,
          ),
          Text(data.location, style: subHeaderTextStyle),
          Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: Color(0xff00c6ff)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _planetCardRow(text: data.distance, img: "assets/images/ic_distance.png"),
              ),
              Container(width: 20.0),
              Expanded(
                child: _planetCardRow(text: data.gravity, img: "assets/images/ic_gravity.png"),
              ),
            ],
          )
        ],
      ),
    ),
    decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          )
        ]),
  );

  return Stack(
    children: [planetCard, planetThumbnail],
  );
}

final planetCard = Container(
  height: 124.0,
  margin: EdgeInsets.only(left: 46.0),
  decoration: BoxDecoration(
      color: Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: Offset(0.0, 10.0),
        )
      ]),
);

class PlanetRow extends StatelessWidget {
  final PlanetData planet;

  const PlanetRow({Key key, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: planetFactory(planet),
    );
  }
}

class PlanetData {
  final int id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String description;
  final String image;

  const PlanetData(
      {this.id,
      this.name,
      this.location,
      this.distance,
      this.gravity,
      this.description,
      this.image});
}
