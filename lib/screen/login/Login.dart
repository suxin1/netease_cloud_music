import 'package:NeteaseMusicMobileFake/store/count.dart';
import "package:flutter/material.dart";
import 'package:flutter_redux/flutter_redux.dart';
import "package:flutter_svg/flutter_svg.dart";

// import "package:redux/redux.dart";
import "package:NeteaseMusicMobileFake/theme/default.dart";
import "package:NeteaseMusicMobileFake/screen/login/Form.dart";
import "package:NeteaseMusicMobileFake/store/count.dart" as countStore;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(colors["primary"]),
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
            Counter()
          ],
        ),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CountState, int>(
      converter: (store) => store.state.count,
      builder: (context, count) {
        return Row(
          children: [
            Text(
              "$count",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            StoreConnector<CountState, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(countStore.Action.increment);
              },
              builder: (context, callback) {
                return RaisedButton(
                  child: Text("plus"),
                  onPressed: callback,
                );
              },
            )
          ],
        );
      },
    );
  }
}
