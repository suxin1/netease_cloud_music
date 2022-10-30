library track_model;

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";
import "package:built_collection/built_collection.dart";

import "./artist.dart";

part 'track.g.dart';

abstract class Track implements Built<Track, TrackBuilder> {
  String get name;
  int get id;
  int get pst;
  int get t;

  // BuiltList<Artist> get ar;

  Track._();
  factory Track([void Function(TrackBuilder) updates]) = _$Track;
  static Serializer<Track> get serializer => _$trackSerializer;
}