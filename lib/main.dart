import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

import 'package:netease_cloud_music/service/service.dart';
import 'package:netease_cloud_music/service/user/user.dart';

import 'app.dart';

import './bloc/main.dart' as bloc;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bloc.main();
  // initService();
  // runAppAsync();
  // final user = service.get<User>();
  // Future.delayed(Duration(seconds: 1), () {
  //   user.login(
  //     "13540239926",
  //     "ggg123456",
  //   );
  // });
}

void runAppAsync() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? accountStr = prefs.getString(ACCOUNT_DATA_KEY);
  if (accountStr != null) {
    runApp(
      AppComponent(initialPage: '/home'),
    );
  } else {
    runApp(AppComponent(
      initialPage: '/login',
    ));
  }
}
