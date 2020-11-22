library login;

import "dart:convert";
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import "package:NeteaseMusicMobileFake/service/model/account.dart";
import "package:NeteaseMusicMobileFake/service/model/profile.dart";
import "package:NeteaseMusicMobileFake/service/model/binding.dart";

part 'login.g.dart';

abstract class Login implements Built<Login, LoginBuilder> {
  // Fields
  Account get account;
  Profile get profile;
  BuiltList<Binding> get bindings;

  int get code;
  String get cookie;
  int get loginType;
  String get token;

  Login._();

  // static Login fromJson(String jsonString) {
  //   return serializers.deserializeWith(
  //       Login.serializer, json.decode(jsonString));
  // }

  factory Login([void Function(LoginBuilder) updates]) = _$Login;
  static Serializer<Login> get serializer => _$loginSerializer;
}
