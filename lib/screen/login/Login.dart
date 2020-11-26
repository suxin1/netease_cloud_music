import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

// import "package:redux/redux.dart";
import "package:NeteaseCloudMusic/theme/default.dart";
import "package:NeteaseCloudMusic/screen/login/Form.dart";

import 'package:NeteaseCloudMusic/service/service.dart';
import 'package:NeteaseCloudMusic/service/counter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: themeColors["primary"],
        child: ListView(
          children: [
            Container(
              // margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: SvgPicture.asset(
                    "assets/logo.svg",
                  ),
                ),
              ),
            ),
            LoginForm(),
            CounterView(),
          ],
        ),
      ),
    );
  }
}

class CounterView extends StatelessWidget {
  final counterService = service.get<Counter>();

  CounterView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: counterService.stream$,
      builder: (BuildContext context, AsyncSnapshot snap) {
        return Column(
          children: [
            Text("${snap.data}"),
            RaisedButton(
              child: Text("plus"),
              onPressed: () => counterService.increment(),
            ),
          ],
        );
      },
    );
  }
}
