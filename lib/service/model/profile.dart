library profile;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {
  // Fields
  int get accountStatus;
  int get authStatus;
  int get authority;

  @nullable
  String get avatarDetail;

  @nullable
  BigInt get avatarImgId;

  @nullable
  String get avatarImgIdStr;

  @nullable
  String get avatarImgId_str;

  @nullable
  String get avatarUrl;

  @nullable
  BigInt get backgroundImgId;

  @nullable
  String get backgroundImgIdStr;

  @nullable
  String get backgroundUrl;

  @nullable
  BigInt get birthday;

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

  int get followeds;
  int get follows;
  int get gender;
  bool get mutual;

  String get nickname;
  int get playlistBeSubscribedCount;
  int get playlistCount;
  int get province;

  @nullable
  String get remarkName;
  String get signature;
  BigInt get userId;

  int get userType;
  int get vipType;

  Profile._();
  factory Profile([void Function(ProfileBuilder) updates]) = _$Profile;
  static Serializer<Profile> get serializer => _$profileSerializer;
}
