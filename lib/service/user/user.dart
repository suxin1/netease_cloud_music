import 'dart:convert';

import 'package:dio/dio.dart';
import "package:rxdart/rxdart.dart";

import 'package:NeteaseMusicMobileFake/service/model/account.dart';
import 'package:NeteaseMusicMobileFake/network/httpRequest.dart';

class AccountData {
  final String name;

  AccountData(this.name);
}

class User {
  BehaviorSubject<LoginResponse> _counter =
      BehaviorSubject.seeded(LoginResponse());

  Stream get stream$ => _counter.stream;

  LoginResponse get current => _counter.value;

  void login(String username, String passwd) async {
    Response response = await request.get("/login/cellphone", params: {
      "phone": "13540239926",
      "password": "ggg123456",
    });
    var data = response.toString();
    var dataJson = json.decode(data);
    LoginResponse user = LoginResponse.fromMap(response.data);
    print(response);
  }
}
