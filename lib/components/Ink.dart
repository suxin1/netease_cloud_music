import "package:flutter/material.dart";
import "dart:async";

class TapResponse extends StatefulWidget {
  final Widget child;
  final GestureTapCallback onTap;

  TapResponse({required this.child, required this.onTap});

  @override
  _TapResponseState createState() => _TapResponseState();
}

class _TapResponseState extends State<TapResponse> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails e) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails e) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    setState(() {
      _highlight = true;
    });
    Timer(
      Duration(milliseconds: 100),
      () => {
        setState(() {
          _highlight = false;
        })
      },
    );
    // assert(widget.onTap != null);
    if (widget.onTap != null) {
      widget.onTap();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: Container(
        child: widget.child,
        color: _highlight ? Color(0x11000000) : Colors.transparent,
      ),
    );
  }
}
