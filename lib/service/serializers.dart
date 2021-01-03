library serializers;

import "package:built_collection/built_collection.dart";
// import "package:built_value/built_value.dart";
// import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import "package:built_value/serializer.dart";
import 'package:NeteaseCloudMusic/service/user/model.dart';
import 'package:NeteaseCloudMusic/service/playlist/model.dart';
import 'package:NeteaseCloudMusic/service/artist/model.dart';

import "package:NeteaseCloudMusic/service/plugin/iso_8601_date_time_serializer.dart";

part 'serializers.g.dart';

@SerializersFor([
  Account,
  Profile,
  Binding,
  Playlist,
  Playlists,
  Artist,
  LoginResponse,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();

// @SerializersFor([
//   // Fields
//   Account,
//   Profile,
//   Binding,
//   LoginResponse,
// ])
// final Serializers serializers = _$serializers;
