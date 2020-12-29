import 'package:fluro/fluro.dart';
import "package:flutter/material.dart";
// import 'package:shared_preferences/shared_preferences.dart';

import 'package:NeteaseCloudMusic/config/application.dart';
import 'package:NeteaseCloudMusic/config/routes.dart';
// import "package:NeteaseCloudMusic/screen/home/Home.dart";
// import 'package:NeteaseCloudMusic/service/service.dart';
// import 'package:NeteaseCloudMusic/service/user/user.dart';

class AppComponent extends StatefulWidget {
  final String initialPage;
  AppComponent({this.initialPage});

  @override
  _AppComponentState createState() => _AppComponentState();
}

class _AppComponentState extends State<AppComponent> {
  _AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "网抑云",
      // home: HomeScreen(),
      onGenerateRoute: Application.router.generator,
      debugShowCheckedModeBanner: false,
      // navigatorKey: navigatorKey,
      initialRoute: widget.initialPage,
    );
  }
}
