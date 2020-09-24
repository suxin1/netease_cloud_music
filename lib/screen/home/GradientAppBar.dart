import 'dart:ui';

import "package:flutter/material.dart";
import "package:NeteaseMusicMobileFake/animation.dart";
import "package:NeteaseMusicMobileFake/screen/tab/Tab.dart";

class GradientAppBar extends StatelessWidget {
  final String title;
  final double height = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: height + statusBarHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.repeated),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, SlideUpTransition(MyStatelessWidget())),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
            ),
          ),
        ),
      ),
    );
  }
}
