import 'package:fluro/fluro.dart';
import "package:flutter/material.dart";
// import 'package:shared_preferences/shared_preferences.dart';

import 'package:netease_cloud_music/config/application.dart';
import 'package:netease_cloud_music/config/routes.dart';
// import "package:netease_cloud_music/screen/home/Home.dart";
// import 'package:netease_cloud_music/service/service.dart';
// import 'package:netease_cloud_music/service/user/user.dart';

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
