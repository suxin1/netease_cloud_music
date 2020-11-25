import 'dart:convert';

import 'package:dio/dio.dart';
import "package:rxdart/rxdart.dart";
import 'package:shared_preferences/shared_preferences.dart';
import 'package:NeteaseMusicMobileFake/service/model/account.dart';
import 'package:NeteaseMusicMobileFake/network/httpRequest.dart';

const ACCOUNT_DATA_KEY = 'account';

class AccountData {
  LoginResponse loginResponse = LoginResponse();
  bool progressing;

  AccountData();
}

class User {
  BehaviorSubject<LoginResponse> _account =
      BehaviorSubject.seeded(LoginResponse());

  Stream get stream$ => _account.stream;

  LoginResponse get current => _account.value;

  SharedPreferences prefs;

  User() {
    initState();
  }

  void initState() async {
    prefs = await SharedPreferences.getInstance();
    String accountStr = prefs.getString(ACCOUNT_DATA_KEY);
    if (accountStr != null) {
      Map<String, dynamic> data = json.decode(accountStr);
      LoginResponse deserializedData = LoginResponse.fromMap(data);
      _account.add(deserializedData);
    }
  }

  void login(String username, String passwd) async {
    Response response = await request.get("/login/cellphone", params: {
      "phone": username,
      "password": passwd,
    });
    // var data = response.toString();
    // var dataJson = json.decode(data);
    LoginResponse user = LoginResponse.fromMap(response.data);
    prefs.setString(ACCOUNT_DATA_KEY, response.toString());
    _account.add(user);
  }
}
