library artist_model;

import 'dart:convert';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';

part 'model.g.dart';

abstract class Artist implements Built<Artist, ArtistBuilder> {
  int? get id;

  String? get name;

  Artist._();
  factory Artist([void Function(ArtistBuilder) updates]) = _$Artist;
  static Serializer<Artist> get serializer => _$artistSerializer;
}