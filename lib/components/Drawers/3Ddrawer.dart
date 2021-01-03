import "dart:math" as math;
import "package:flutter/material.dart";

class CustomDrawer extends StatefulWidget {
  final Widget child;

  CustomDrawer({@required this.child});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  final double maxSlide = 250.0;
  final double maxRadius = 40.0;
  bool _canBeDragged = false;

  AnimationController ac;

  @override
  void initState() {
    super.initState();
    ac = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 230),

    );
  }

  void toggle() => ac.isDismissed ? ac.forward() : ac.reverse();

  void _onDragStart(DragStartDetails e) {
    print("drag start");
    bool isDragOpenFromLeft = ac.isDismissed && e.globalPosition.dx < 60;
    bool isDragCloseFromRight = ac.isCompleted && e.globalPosition.dx > 30;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragEnd(DragEndDetails e) {
    print("drag end");
    if (ac.isDismissed || ac.isCompleted) {
      return;
    }
    if (e.velocity.pixelsPerSecond.dx.abs() >= 365.0) {
      double visualVelocity =
          e.velocity.pixelsPerSecond.dx / MediaQuery.of(context).size.width;
      ac.fling(velocity: visualVelocity);
    } else if (ac.value < 0.5) {
      ac.reverse();
    } else {
      ac.forward();
    }
  }

  void _onDragUpdate(DragUpdateDetails e) {
    if (_canBeDragged) {
      double delta = e.primaryDelta / maxSlide;
      ac.value += delta;
    }
    print("drag update");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragEnd: _onDragEnd,
      onHorizontalDragUpdate: _onDragUpdate,
      child: AnimatedBuilder(
          animation: ac,
          builder: (context, _) {
            double slide = maxSlide * ac.value;
            double radius = maxRadius * ac.value;
            double scale = 1 - ac.value * 0.3;
            return Container(
              color: Colors.black,
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset(maxSlide * ac.value-MediaQuery.of(context).size.width, 0),
                    child: Transform(
                      transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(math.pi /2 * (1 - ac.value)),
                      alignment: Alignment.centerRight,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(maxSlide * ac.value, 0),
                    child: Transform(
                      alignment: Alignment.centerLeft,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(-math.pi * ac.value / 2),
                      child: widget.child,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
