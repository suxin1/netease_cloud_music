import 'package:NeteaseMusicMobileFake/service/user/user.dart';
import "package:flutter/material.dart";

import "package:NeteaseMusicMobileFake/screen/home/Home.dart";
import 'package:NeteaseMusicMobileFake/service/service.dart';

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "planets",
      home: HomeScreen(),
    );
  }
}

void main() {
  initService();
  final user = service.get<User>();
  Future.delayed(Duration(seconds: 1), () {
    user.login(
      "13540239926",
      "ggg123456",
    );
  });

  runApp(MyApp());
}
