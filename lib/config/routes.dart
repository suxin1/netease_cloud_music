import 'package:NeteaseCloudMusic/config/route_handlers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String login = "/login";
  static String personal = "/personal";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (
      BuildContext context,
      Map<String, List<String>> params,
    ) {
      print("Route not found!");
    });

    router.define(root, handler: personalHandler);
    router.define(login, handler: loginHandler);
    router.define(personal, handler: personalHandler);
  }
}
