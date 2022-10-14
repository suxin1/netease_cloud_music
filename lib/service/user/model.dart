library account_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:netease_cloud_music/service/serializers.dart';

part 'model.g.dart';

abstract class Account implements Built<Account, AccountBuilder> {
  // Fields
  bool? get anonimousUser;

  int? get ban;

  int? get baoyueVersion;

  DateTime? get createTime;

  int? get donateVersion;

  int? get id;

  String? get salt;

  int? get status;

  int? get tokenVersion;

  int? get type;

  String? get userName;

  int? get vipType;

  int? get vipTypeVersion;

  int? get whitelistAuthority;

  Account._();

  factory Account([void Function(AccountBuilder) updates]) = _$Account;

  static Serializer<Account> get serializer => _$accountSerializer;
}

abstract class Profile implements Built<Profile, ProfileBuilder> {
  // Fields
  int? get accountStatus;

  int? get authStatus;

  int? get authority;

  String? get avatarDetail;

  int? get avatarImgId;

  String? get avatarImgIdStr;

  String? get avatarImgId_str;

  String? get avatarUrl;

  int? get backgroundImgId;

  String? get backgroundImgIdStr;

  String? get backgroundUrl;

  int? get birthday;

  int? get city;

  bool? get defaultAvatar;

  String? get description;

  String? get detailDescription;

  int? get djStatus;

  int? get eventCount;

  BuiltList<String>? get expertTags;

//
// Experts? get experts;

  bool? get followed;

  int? get followeds;

  int? get follows;

  int? get gender;

  bool? get mutual;

  String? get nickname;

  int? get playlistBeSubscribedCount;

  int? get playlistCount;

  int? get province;

  String? get remarkName;

  String? get signature;

  int? get userId;

  int? get userType;

  int? get vipType;

  Profile._();

  factory Profile([void Function(ProfileBuilder) updates]) = _$Profile;

  static Serializer<Profile> get serializer => _$profileSerializer;
}

abstract class Binding implements Built<Binding, BindingBuilder> {
  // Fields

  DateTime? get bindingTime;

  int? get expiresIn;

  bool? get expired;

  int? get id;

  DateTime? get refreshTime;

  String? get tokenJsonStr;

  int? get type;

  String? get url;

  int? get userId;

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

  int? get code;

  String? get cookie;

  int? get loginType;

  String? get token;

  LoginResponse._();

  factory LoginResponse.fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith<LoginResponse>(LoginResponse.serializer, data)!;
  }

  factory LoginResponse([void Function(LoginResponseBuilder) updates]) =
      _$LoginResponse;

  static Serializer<LoginResponse> get serializer => _$loginResponseSerializer;
}
