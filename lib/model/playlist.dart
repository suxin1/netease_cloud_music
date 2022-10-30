library playlist_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import "./serializer.dart";
import "./user.dart";
import "./track.dart";

part 'playlist.g.dart';

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

  BuiltList<Track>? get tracks;

  Playlist._();

  factory Playlist([void Function(PlaylistBuilder) updates]) = _$Playlist;

  String toJson() {
    return json.encode(serializers.serializeWith(Playlist.serializer, this));
  }

  static Playlist fromJson(String jsonString) {
    return serializers.deserializeWith(Playlist.serializer, json.decode(jsonString))!;
  }

  factory Playlist.fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith(Playlist.serializer, data)!;
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