import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:NeteaseCloudMusic/components/PlanetSummary.dart";
import 'package:NeteaseCloudMusic/theme/TextType.dart';
import "package:NeteaseCloudMusic/components/Separator.dart";

class Detail extends StatelessWidget {
  final PlanetData paramData;
  Detail(this.paramData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        //   child: RaisedButton(onPressed: () => Navigator.pop(context),child: Text("Go back")),
        // )
        body: Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xFF736AB7),
      child: Stack(
        children: [
          _getBackground(),
          _getGradient(),
          _getContent(),
          _getToolbar(context)
        ],
      ),
    ));
  }

  Container _getBackground() {
    return Container(
      child: Image.network(paramData.picture, fit: BoxFit.cover, height: 300.0),
      constraints: BoxConstraints.expand(height: 300.0),
    );
  }

  Widget _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 111.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0x00736AB7),
          Color(0xFF736AB7),
        ],
        stops: [0.0, 0.9],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(0.0, 1.0),
      )),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return ListView(
      children: [
        PlanetSummary.vertical(paramData),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_overviewTitle, style: headerTextStyle),
                Separator(),
                Text(
                  paramData.description,
                  style: TextType.common,
                  textAlign: TextAlign.justify,
                )
              ],
            ))
      ],
    );
  }

  Widget _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(color: Colors.white),
    );
  }
}
