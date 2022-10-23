// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Account.serializer)
      ..add(Artist.serializer)
      ..add(Binding.serializer)
      ..add(LoginResponse.serializer)
      ..add(Playlist.serializer)
      ..add(Playlists.serializer)
      ..add(Profile.serializer)
      ..add(Song.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Artist)]),
          () => new ListBuilder<Artist>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Binding)]),
          () => new ListBuilder<Binding>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Playlist)]),
          () => new ListBuilder<Playlist>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Song)]),
          () => new ListBuilder<Song>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
