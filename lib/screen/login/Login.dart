import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
// import "package:redux/redux.dart";
import "package:NeteaseMusicMobileFake/theme/default.dart";
import "package:NeteaseMusicMobileFake/screen/login/Form.dart";

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
          ],
        ),
      ),
    );
  }
}
