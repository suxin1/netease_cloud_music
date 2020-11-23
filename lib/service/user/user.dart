import 'package:dio/dio.dart';
import "package:rxdart/rxdart.dart";

import "package:NeteaseMusicMobileFake/service/user/login.dart";
import "package:NeteaseMusicMobileFake/network/dio.dart";

class AccountData {
  final String name;

  AccountData(this.name);
}

class User {
  BehaviorSubject<Login> _counter = BehaviorSubject.seeded(Login());

  Stream get stream$ => _counter.stream;

  Login get current => _counter.value;

  void login(String username, String passwd) async {
    Future<Response> response = dio.get("/login/cellphone", queryParameters: {
      "username": "13540239926",
      "password": "ggg123456",
    });
    print(response);
  }
}
