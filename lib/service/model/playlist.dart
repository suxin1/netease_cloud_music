library playlist_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:NeteaseCloudMusic/service/model/serializers.dart';
import 'package:NeteaseCloudMusic/service/model/account.dart';

part 'playlist.g.dart';

// abstract class ResponseBase {
//   int get code;
// }

abstract class Playlist implements Built<Playlist, PlaylistBuilder> {
  // Fields
  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  bool get subscribed;
  @nullable
  int get subscribedCount;
  @nullable
  DateTime get createTime;
  @nullable
  int get trackCount;

  @nullable
  String get description;

  @nullable
  int get coverImgId;

  @nullable
  String get coverImgId_str;

  @nullable
  String get coverImgUrl;

  @nullable
  int get playCount;

  @nullable
  int get specialType;

  @nullable
  Profile get creator;

  Playlist._();

  factory Playlist([void Function(PlaylistBuilder) updates]) = _$Playlist;

  String toJson() {
    return json.encode(serializers.serializeWith(Playlist.serializer, this));
  }

  static Playlist fromJson(String jsonString) {
    return serializers.deserializeWith(
        Playlist.serializer, json.decode(jsonString));
  }

  static Serializer<Playlist> get serializer => _$playlistSerializer;
}

// 歌单相应对象
abstract class PlaylistResponse
    implements Built<PlaylistResponse, PlaylistResponseBuilder> {
  // Fields
  @nullable
  int get code;
  @nullable
  bool get more;

  BuiltList<Playlist> get playlist;

  PlaylistResponse._();

  factory PlaylistResponse([void Function(PlaylistResponseBuilder) updates]) =
      _$PlaylistResponse;

  factory PlaylistResponse.fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith(PlaylistResponse.serializer, data);
  }

  String toJson() {
    return json
        .encode(serializers.serializeWith(PlaylistResponse.serializer, this));
  }

  static PlaylistResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        PlaylistResponse.serializer, json.decode(jsonString));
  }

  static Serializer<PlaylistResponse> get serializer =>
      _$playlistResponseSerializer;
}
