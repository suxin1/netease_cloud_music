import "package:flutter/material.dart";

class Card extends StatelessWidget {
  final Widget child;
  final String title;

  Card({Key key, this.child, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFEEEEEE),
            blurRadius: 20.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Column(
        children: [
          _header(),
          _body(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 40,
      child: Row(
        children: [
          if (title != null)
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                  color: Color(0xFFAAAAAA),
                ),
              ),
            ),
          Spacer(),
          Text("icon"),
        ],
      ),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(8),
      child: child,
    );
  }
}
