import "package:flutter/material.dart";

// Page transition animation.
class SlideUpTransition extends PageRouteBuilder {
  final Widget enterPage;

  SlideUpTransition(this.enterPage)
      : super(
          transitionDuration: Duration(milliseconds: 200),
          pageBuilder: (
            BuildContext context,
            Animation<double> a1,
            Animation<double> a2,
          ) =>
              enterPage,
          transitionsBuilder: (context, animation, secondAnimation, child) {
            Offset begin = Offset(0.0, 0.15);
            Offset end = Offset.zero;
            var curveTween;
            var fadeCurveTween;

            if (animation.status == AnimationStatus.reverse) {
              curveTween = CurveTween(curve: Curves.easeIn);
              fadeCurveTween = CurveTween(curve: Curves.easeIn);
            } else {
              curveTween = CurveTween(curve: Curves.easeOut);
              fadeCurveTween = CurveTween(curve: Curves.easeOut);
            }

            var tween = Tween(begin: begin, end: end).chain(curveTween);
            var offsetAnimation = animation.drive(tween);
            Animation<double> fadeAnimation = animation
                .drive(Tween(begin: 0.0, end: 1.0).chain(fadeCurveTween));

            return SlideTransition(
              position: offsetAnimation,
              child: FadeTransition(
                opacity: fadeAnimation,
                child: child,
              ),
            );
          },
        );
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget? enterPage;
  final Widget? exitPage;

  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
          enterPage as Widget,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
            children: <Widget>[
              SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(-1.0, 0.0),
                ).animate(animation),
                child: exitPage,
              ),
              SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            ],
          ),
        );
}
