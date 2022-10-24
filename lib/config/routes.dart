import 'package:netease_cloud_music/config/route_handlers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String login = "/login";
  static String personal = "/home";
  static String playlistDetail = "/playlist/:id";

  static String format(String path, Map<String, dynamic> params) {
    // var keys = params.keys;
    String newPath = path;

    params.forEach((key, value) {
      newPath = newPath.replaceFirst(":$key", value.toString());
    });
    return newPath;
  }

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> params,
    ) {
      print("Route not found!");
    });

    router.define(root, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(personal, handler: homeHandler);
    router.define(playlistDetail, handler: playlistDetailHandler);
  }
}
