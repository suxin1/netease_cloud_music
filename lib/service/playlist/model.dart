library playlist_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'package:netease_cloud_music/service/serializers.dart';
import 'package:netease_cloud_music/service/user/model.dart';
import 'package:netease_cloud_music/service/artist/model.dart';

part 'model.g.dart';

// abstract class ResponseBase {
//   int get code;
// }
abstract class Song implements Built<Song, SongBuilder> {
  String get name;
  int get id;
  int get pst;
  int get t;
  BuiltList<Artist> get ar;

  Song._();
  factory Song([void Function(SongBuilder) updates]) = _$Song;
  static Serializer<Song> get serializer => _$songSerializer;
}


abstract class Playlist implements Built<Playlist, PlaylistBuilder> {
  // Fields

  int? get id;

  String? get name;

  bool? get subscribed;

  int? get subscribedCount;

  DateTime? get createTime;

  int? get trackCount;

  String? get description;

  int? get coverImgId;

  String? get coverImgId_str;

  String? get coverImgUrl;

  int? get playCount;

  int? get specialType;

  Profile? get creator;

  BuiltList<Song>? get tracks;

  Playlist._();

  factory Playlist([void Function(PlaylistBuilder) updates]) = _$Playlist;

  String toJson() {
    return json.encode(serializers.serializeWith(Playlist.serializer, this));
  }

  static Playlist fromJson(String jsonString) {
    return serializers.deserializeWith(Playlist.serializer, json.decode(jsonString))!;
  }

  static Serializer<Playlist> get serializer => _$playlistSerializer;
}


// 歌单相应对象
abstract class Playlists implements Built<Playlists, PlaylistsBuilder> {
  // Fields

  int? get code;

  bool? get more;

  BuiltList<Playlist> get playlist;

  Playlists._();

  factory Playlists([void Function(PlaylistsBuilder) updates]) = _$Playlists;

  factory Playlists.fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith(Playlists.serializer, data)!;
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Playlists.serializer, this));
  }

  static Playlists fromJson(String jsonString) {
    return serializers.deserializeWith(Playlists.serializer, json.decode(jsonString))!;
  }

  static Serializer<Playlists> get serializer => _$playlistsSerializer;
}
