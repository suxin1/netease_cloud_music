import 'package:NeteaseMusicMobileFake/service/user/user.dart';
import "package:flutter/material.dart";

import "package:NeteaseMusicMobileFake/screen/home/Home.dart";
import 'package:NeteaseMusicMobileFake/service/service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:NeteaseMusicMobileFake/service/user/user.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp();

  void init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String accountStr = prefs.getString(ACCOUNT_DATA_KEY);
    if (accountStr != null) {
      // Navigator.push()
      // TODO 如果用户已经登录（accountStr 不为空），跳转到首页。
      // navigatorKey.currentState.pushNamed('/personal');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "planets",
      home: HomeScreen(),
      navigatorKey: navigatorKey,
    );
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initService();
  // final user = service.get<User>();
  // Future.delayed(Duration(seconds: 1), () {
  //   user.login(
  //     "13540239926",
  //     "ggg123456",
  //   );
  // });

  runApp(MyApp());
}
