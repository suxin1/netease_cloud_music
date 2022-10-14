import "package:flutter/material.dart";
import 'package:netease_cloud_music/theme/TextType.dart';

class Card extends StatelessWidget {
  final Widget child;
  final String title;
  final TextStyle? textStyle;

  Card({
    Key? key,
    required this.child,
    required this.title,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFEEEEEE),
            blurRadius: 20.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          children: [
            _header(),
            _body(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 44,
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 8.0,
      ),
      // color: Colors.red,
      child: Row(
        children: [
          if (title != null)
            Text(
              title,
              style: TextType.smallSecondary,
            ),
          Spacer(),
          const IconButton(
            constraints: BoxConstraints(
              maxHeight: 30,
              minHeight: 30,
              minWidth: 30,
              maxWidth: 30,
            ),
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.more_vert),
            iconSize: 20,
            onPressed: null,
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      // padding: EdgeInsets.all(8),
      child: child,
    );
  }
}
