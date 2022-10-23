// GENERATED CODE - DO NOT MODIFY BY HAND

part of artist_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Artist> _$artistSerializer = new _$ArtistSerializer();

class _$ArtistSerializer implements StructuredSerializer<Artist> {
  @override
  final Iterable<Type> types = const [Artist, _$Artist];
  @override
  final String wireName = 'Artist';

  @override
  Iterable<Object?> serialize(Serializers serializers, Artist object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Artist deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArtistBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$Artist extends Artist {
  @override
  final int? id;
  @override
  final int? name;

  factory _$Artist([void Function(ArtistBuilder)? updates]) =>
      (new ArtistBuilder()..update(updates))._build();

  _$Artist._({this.id, this.name}) : super._();

  @override
  Artist rebuild(void Function(ArtistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArtistBuilder toBuilder() => new ArtistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Artist && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Artist')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ArtistBuilder implements Builder<Artist, ArtistBuilder> {
  _$Artist? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _name;
  int? get name => _$this._name;
  set name(int? name) => _$this._name = name;

  ArtistBuilder();

  ArtistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Artist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Artist;
  }

  @override
  void update(void Function(ArtistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Artist build() => _build();

  _$Artist _build() {
    final _$result = _$v ?? new _$Artist._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
