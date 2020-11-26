import 'package:NeteaseCloudMusic/screen/login/Login.dart';
import 'package:NeteaseCloudMusic/screen/personal/Personal.dart';
// import 'package:flutter/painting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

Handler loginHandler = Handler(handlerFunc: (
  BuildContext context,
  Map<String, List<String>> params,
) {
  return LoginScreen();
});

Handler personalHandler = Handler(handlerFunc: (
  BuildContext context,
  Map<String, List<String>> params,
) {
  return PersonalScreen();
});
