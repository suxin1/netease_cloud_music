import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/screen/detail/Detail.dart";
import "package:NeteaseMusicMobileFake/animation.dart";
import "package:NeteaseMusicMobileFake/components/TextType.dart";

/// Planet卡片展示
class PlanetSummary extends StatelessWidget {
  final PlanetData planet;
  final bool horizontal;

  const PlanetSummary(this.planet, {this.horizontal = true});

  const PlanetSummary.vertical(this.planet) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: horizontal
          ? () => Navigator.push(context, SlideUpTransition(Detail(planet)))
          : null,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: _planetFactory(planet),
      ),
    );
  }

  Widget _planetThumbnail(String path, int id) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: horizontal ? 16.0 : 0.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.topCenter,
      child: Hero(
          tag: "planet-hero-$id",
          child: Image(image: AssetImage(path), height: 92.00, width: 92.00)),
    );
  }

  Widget _planetCardRow({String text, String img}) {
    return Row(
      mainAxisAlignment:
          horizontal ? MainAxisAlignment.start : MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          img,
          height: 12,
        ),
        Container(width: 8.0),
        Text(text, style: regularTextStyle)
      ],
    );
  }

  Widget _planetCard(PlanetData data) {
    return Container(
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
          ? EdgeInsets.only(
              left: 46.0,
            )
          : EdgeInsets.only(top: 72.0),
      child: Container(
        constraints: BoxConstraints.expand(),
        margin: EdgeInsets.fromLTRB(horizontal ? 65.0 : 16.0, 16.0, 16.0, 16.0),
        child: Column(
          crossAxisAlignment:
              horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            Container(
              height: horizontal?0.0:10.0,
            ),
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
                  child: _planetCardRow(
                      text: data.distance,
                      img: "assets/images/ic_distance.png"),
                ),
                Container(width: 20.0),
                Expanded(
                  child: _planetCardRow(
                      text: data.gravity, img: "assets/images/ic_gravity.png"),
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
  }

  Widget _planetFactory(PlanetData planet) {
    return Stack(
      children: [
        _planetCard(planet),
        _planetThumbnail(planet.image, planet.id),
      ],
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
  final String picture;

  const PlanetData({
    this.id,
    this.name,
    this.location,
    this.distance,
    this.gravity,
    this.description,
    this.image,
    this.picture,
  });
}
