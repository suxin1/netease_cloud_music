import "package:flutter/material.dart";

// Page transition animation.
class SlideUpTransition extends PageRouteBuilder {
  final Widget widget;
  SlideUpTransition(this.widget): super(
    pageBuilder: (BuildContext context, Animation<double> a1, Animation<double> a2) {
      return widget;
    }
  );
}