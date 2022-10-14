import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import "package:rxdart/rxdart.dart";
import "package:fluttertoast/fluttertoast.dart";

import 'package:shared_preferences/shared_preferences.dart';
import 'package:netease_cloud_music/service/user/model.dart';
import 'package:netease_cloud_music/network/httpRequest.dart';

const String ACCOUNT_DATA_KEY = "account";

class AccountData {
  LoginResponse loginResponse = LoginResponse();
  bool progressing = false;

  AccountData();
}

class User {
  BehaviorSubject<LoginResponse> _account =
      BehaviorSubject.seeded(LoginResponse());

  Stream get stream$ => _account.stream;

  LoginResponse get current => _account.value;

  SharedPreferences? prefs;

  User() {
    initState();
  }

  void initState() async {
    prefs = await SharedPreferences.getInstance();
    String? accountStr = prefs?.getString(ACCOUNT_DATA_KEY);

    if (accountStr != null) {
      Map<String, dynamic> data = json.decode(accountStr);
      LoginResponse deserializedData = LoginResponse.fromMap(data);
      _account.add(deserializedData);
    }
  }

  Future<Response<dynamic>> login(String username, String passwd) async {
    Response response = await request.get("/login/cellphone", params: {
      "phone": username,
      "password": passwd,
    });
    // var data = response.toString();
    // var dataJson = json.decode(data);
    Fluttertoast.showToast(
      msg: "你今天真好看!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );

    LoginResponse user = LoginResponse.fromMap(response.data);
    prefs?.setString(ACCOUNT_DATA_KEY, response.toString());

    _account.add(user);
    return response;
  }
}
