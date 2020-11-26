library account_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:NeteaseCloudMusic/service/model/serializers.dart';

part 'account.g.dart';

abstract class Account implements Built<Account, AccountBuilder> {
  // Fields
  @nullable
  bool get anonimousUser;
  @nullable
  int get ban;
  @nullable
  int get baoyueVersion;
  @nullable
  DateTime get createTime;
  @nullable
  int get donateVersion;
  @nullable
  int get id;
  @nullable
  String get salt;
  @nullable
  int get status;
  @nullable
  int get tokenVersion;
  @nullable
  int get type;
  @nullable
  String get userName;
  @nullable
  int get vipType;
  @nullable
  int get vipTypeVersion;
  @nullable
  int get whitelistAuthority;

  Account._();

  factory Account([void Function(AccountBuilder) updates]) = _$Account;

  static Serializer<Account> get serializer => _$accountSerializer;
}

abstract class Profile implements Built<Profile, ProfileBuilder> {
  // Fields

  @nullable
  int get accountStatus;

  @nullable
  int get authStatus;

  @nullable
  int get authority;

  @nullable
  String get avatarDetail;

  @nullable
  int get avatarImgId;

  @nullable
  String get avatarImgIdStr;

  @nullable
  String get avatarImgId_str;

  @nullable
  String get avatarUrl;

  @nullable
  int get backgroundImgId;

  @nullable
  String get backgroundImgIdStr;

  @nullable
  String get backgroundUrl;

  @nullable
  int get birthday;

  @nullable
  int get city;

  @nullable
  bool get defaultAvatar;

  @nullable
  String get description;

  @nullable
  String get detailDescription;

  @nullable
  int get djStatus;

  @nullable
  int get eventCount;

  @nullable
  String get expertTags;

// @nullable
// Experts get experts;

  @nullable
  bool get followed;

  @nullable
  int get followeds;

  @nullable
  int get follows;

  @nullable
  int get gender;

  @nullable
  bool get mutual;

  @nullable
  String get nickname;

  @nullable
  int get playlistBeSubscribedCount;

  @nullable
  int get playlistCount;

  @nullable
  int get province;

  @nullable
  String get remarkName;

  @nullable
  String get signature;

  @nullable
  int get userId;

  @nullable
  int get userType;
  @nullable
  int get vipType;

  Profile._();
  factory Profile([void Function(ProfileBuilder) updates]) = _$Profile;
  static Serializer<Profile> get serializer => _$profileSerializer;
}

abstract class Binding implements Built<Binding, BindingBuilder> {
  // Fields
  @nullable
  DateTime get bindingTime;
  @nullable
  int get expiresIn;
  @nullable
  bool get expired;
  @nullable
  int get id;
  @nullable
  DateTime get refreshTime;
  @nullable
  String get tokenJsonStr;
  @nullable
  int get type;
  @nullable
  String get url;
  @nullable
  int get userId;

  Binding._();

  factory Binding([void Function(BindingBuilder) updates]) = _$Binding;
  static Serializer<Binding> get serializer => _$bindingSerializer;
}

abstract class LoginResponse
    implements Built<LoginResponse, LoginResponseBuilder> {
  // Fields
  Account get account;
  Profile get profile;
  BuiltList<Binding> get bindings;
  @nullable
  int get code;
  @nullable
  String get cookie;
  @nullable
  int get loginType;
  @nullable
  String get token;

  LoginResponse._();

  factory LoginResponse.fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith(LoginResponse.serializer, data);
  }

  factory LoginResponse([void Function(LoginResponseBuilder) updates]) =
      _$LoginResponse;
  static Serializer<LoginResponse> get serializer => _$loginResponseSerializer;
}
