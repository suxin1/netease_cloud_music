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
  runApp(MyApp());
}
