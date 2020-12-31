library playlist_model;

import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';

part "model.g.dart";

abstract class Artist implements Built<Artist, ArtistBuilder> {
  @nullable
  int get id;
  @nullable
  int get name;

  Artist._();
  factory Artist([void Function(ArtistBuilder) updates]) = _$Artist;
  static Serializer<Artist> get serializer => _$artistSerializer;
}