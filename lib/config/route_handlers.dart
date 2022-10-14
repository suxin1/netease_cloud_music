import "package:netease_cloud_music/screen/login/Login.dart";
import "package:netease_cloud_music/screen/home/Home.dart";
import "package:netease_cloud_music/screen/playlistShow/PlaylistShow.dart";

// import "package:netease_cloud_music/screen/personal/Personal.dart";
// import "package:flutter/painting.dart";
import "package:fluro/fluro.dart";
import "package:flutter/material.dart";

Handler loginHandler = Handler(handlerFunc: (
  BuildContext? context,
  Map<String, dynamic> params,
) {
  return LoginScreen();
});

Handler homeHandler = Handler(handlerFunc: (
  BuildContext? context,
  Map<String, List<String>> params,
) {
  return HomeScreen();
});

Handler playlistShowHandler = Handler(handlerFunc: (
  BuildContext? context,
  Map<String, List<String>> params,
) {
  return PlaylistShow();
});
