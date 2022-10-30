library serializers;

import "package:built_collection/built_collection.dart";
import 'package:built_value/standard_json_plugin.dart';
import "package:built_value/serializer.dart";

import "./user.dart";
import "./playlist.dart";
import "./artist.dart";
import "./track.dart";

import "./plugin/iso_8601_date_time_serializer.dart";

part 'serializer.g.dart';

@SerializersFor([
  Track,
  Playlist,
  Playlists,
  Artist,
  // 账户相关s
  Account,
  Profile,
  Binding,
  LoginResponse,
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
  ..add(Iso8601DateTimeSerializer()))
    .build();
