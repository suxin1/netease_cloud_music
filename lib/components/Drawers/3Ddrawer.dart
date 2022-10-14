import "dart:math" as math;
import "package:flutter/material.dart";

class CustomDrawer extends StatefulWidget {
  final Widget child;

  CustomDrawer({required this.child});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  final double maxSlide = 250.0; // 滑动最大距离。
  bool _canBeDragged = false;

  late AnimationController ac;

  @override
  void initState() {
    super.initState();
    ac = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 230),
    );
  }

  void toggle() => ac.isDismissed ? ac.forward() : ac.reverse();

  void _onDragStart(DragStartDetails e) {
    bool isDragOpenFromLeft = ac.isDismissed && e.globalPosition.dx < 60;
    bool isDragCloseFromRight = ac.isCompleted && e.globalPosition.dx > 30;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragEnd(DragEndDetails e) {
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
      double delta = e.primaryDelta! / maxSlide;
      ac.value += delta;
    }
    print("drag update");
  }

  Widget _getDrawer(BuildContext context) {
    return Transform.translate(
      offset:
          Offset(maxSlide * ac.value - MediaQuery.of(context).size.width, 0),
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(math.pi / 2 * (1 - ac.value)),
        alignment: Alignment.centerRight,
        child: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }

  Widget _getPanel(BuildContext context) {
    return Transform.translate(
      offset: Offset(maxSlide * ac.value, 0),
      child: Transform(
        alignment: Alignment.centerLeft,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(-math.pi * ac.value / 2),
        child: widget.child,
      ),
    );
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
            return _factory(context);
          }),
    );
  }

  Widget _factory(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          _getDrawer(context),
          _getPanel(context),
        ],
      ),
    );
  }
}
