library playlist_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:NeteaseCloudMusic/service/serializers.dart';
import 'package:NeteaseCloudMusic/service/user/model.dart';
import 'package:NeteaseCloudMusic/service/artist/model.dart';

part 'model.g.dart';

// abstract class ResponseBase {
//   int get code;
// }
abstract class Track implements Built<Track, TrackBuilder> {
  String get name;
  int get id;
  int get pst;
  int get t;
  BuiltList<Artist> get ar;
  
  Track._();
  factory Track([void Function(TrackBuilder) updates]) = _$Track;
  static Serializer<Track> get serializer => _$trackSerializer;
}

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
abstract class Playlists implements Built<Playlists, PlaylistsBuilder> {
  // Fields
  @nullable
  int get code;
  @nullable
  bool get more;

  BuiltList<Playlist> get playlist;

  Playlists._();

  factory Playlists([void Function(PlaylistsBuilder) updates]) = _$Playlists;

  factory Playlists.fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith(Playlists.serializer, data);
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Playlists.serializer, this));
  }

  static Playlists fromJson(String jsonString) {
    return serializers.deserializeWith(
        Playlists.serializer, json.decode(jsonString));
  }

  static Serializer<Playlists> get serializer => _$playlistsSerializer;
}
