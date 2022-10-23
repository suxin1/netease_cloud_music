// GENERATED CODE - DO NOT MODIFY BY HAND

part of playlist_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Song> _$songSerializer = new _$SongSerializer();
Serializer<Playlist> _$playlistSerializer = new _$PlaylistSerializer();
Serializer<Playlists> _$playlistsSerializer = new _$PlaylistsSerializer();

class _$SongSerializer implements StructuredSerializer<Song> {
  @override
  final Iterable<Type> types = const [Song, _$Song];
  @override
  final String wireName = 'Song';

  @override
  Iterable<Object?> serialize(Serializers serializers, Song object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'pst',
      serializers.serialize(object.pst, specifiedType: const FullType(int)),
      't',
      serializers.serialize(object.t, specifiedType: const FullType(int)),
      'ar',
      serializers.serialize(object.ar,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Artist)])),
    ];

    return result;
  }

  @override
  Song deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SongBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'pst':
          result.pst = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 't':
          result.t = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ar':
          result.ar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Artist)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PlaylistSerializer implements StructuredSerializer<Playlist> {
  @override
  final Iterable<Type> types = const [Playlist, _$Playlist];
  @override
  final String wireName = 'Playlist';

  @override
  Iterable<Object?> serialize(Serializers serializers, Playlist object,
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subscribed;
    if (value != null) {
      result
        ..add('subscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.subscribedCount;
    if (value != null) {
      result
        ..add('subscribedCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createTime;
    if (value != null) {
      result
        ..add('createTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.trackCount;
    if (value != null) {
      result
        ..add('trackCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImgId;
    if (value != null) {
      result
        ..add('coverImgId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.coverImgId_str;
    if (value != null) {
      result
        ..add('coverImgId_str')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverImgUrl;
    if (value != null) {
      result
        ..add('coverImgUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playCount;
    if (value != null) {
      result
        ..add('playCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.specialType;
    if (value != null) {
      result
        ..add('specialType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Profile)));
    }
    value = object.tracks;
    if (value != null) {
      result
        ..add('tracks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Song)])));
    }
    return result;
  }

  @override
  Playlist deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaylistBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subscribed':
          result.subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'subscribedCount':
          result.subscribedCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createTime':
          result.createTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'trackCount':
          result.trackCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImgId':
          result.coverImgId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'coverImgId_str':
          result.coverImgId_str = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverImgUrl':
          result.coverImgUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'playCount':
          result.playCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'specialType':
          result.specialType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile))! as Profile);
          break;
        case 'tracks':
          result.tracks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Song)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PlaylistsSerializer implements StructuredSerializer<Playlists> {
  @override
  final Iterable<Type> types = const [Playlists, _$Playlists];
  @override
  final String wireName = 'Playlists';

  @override
  Iterable<Object?> serialize(Serializers serializers, Playlists object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'playlist',
      serializers.serialize(object.playlist,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Playlist)])),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.more;
    if (value != null) {
      result
        ..add('more')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Playlists deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaylistsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'more':
          result.more = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'playlist':
          result.playlist.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Playlist)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Song extends Song {
  @override
  final String name;
  @override
  final int id;
  @override
  final int pst;
  @override
  final int t;
  @override
  final BuiltList<Artist> ar;

  factory _$Song([void Function(SongBuilder)? updates]) =>
      (new SongBuilder()..update(updates))._build();

  _$Song._(
      {required this.name,
      required this.id,
      required this.pst,
      required this.t,
      required this.ar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Song', 'name');
    BuiltValueNullFieldError.checkNotNull(id, r'Song', 'id');
    BuiltValueNullFieldError.checkNotNull(pst, r'Song', 'pst');
    BuiltValueNullFieldError.checkNotNull(t, r'Song', 't');
    BuiltValueNullFieldError.checkNotNull(ar, r'Song', 'ar');
  }

  @override
  Song rebuild(void Function(SongBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SongBuilder toBuilder() => new SongBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Song &&
        name == other.name &&
        id == other.id &&
        pst == other.pst &&
        t == other.t &&
        ar == other.ar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), id.hashCode), pst.hashCode),
            t.hashCode),
        ar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Song')
          ..add('name', name)
          ..add('id', id)
          ..add('pst', pst)
          ..add('t', t)
          ..add('ar', ar))
        .toString();
  }
}

class SongBuilder implements Builder<Song, SongBuilder> {
  _$Song? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _pst;
  int? get pst => _$this._pst;
  set pst(int? pst) => _$this._pst = pst;

  int? _t;
  int? get t => _$this._t;
  set t(int? t) => _$this._t = t;

  ListBuilder<Artist>? _ar;
  ListBuilder<Artist> get ar => _$this._ar ??= new ListBuilder<Artist>();
  set ar(ListBuilder<Artist>? ar) => _$this._ar = ar;

  SongBuilder();

  SongBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _pst = $v.pst;
      _t = $v.t;
      _ar = $v.ar.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Song other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Song;
  }

  @override
  void update(void Function(SongBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Song build() => _build();

  _$Song _build() {
    _$Song _$result;
    try {
      _$result = _$v ??
          new _$Song._(
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'Song', 'name'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'Song', 'id'),
              pst: BuiltValueNullFieldError.checkNotNull(pst, r'Song', 'pst'),
              t: BuiltValueNullFieldError.checkNotNull(t, r'Song', 't'),
              ar: ar.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ar';
        ar.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Song', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Playlist extends Playlist {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? subscribed;
  @override
  final int? subscribedCount;
  @override
  final DateTime? createTime;
  @override
  final int? trackCount;
  @override
  final String? description;
  @override
  final int? coverImgId;
  @override
  final String? coverImgId_str;
  @override
  final String? coverImgUrl;
  @override
  final int? playCount;
  @override
  final int? specialType;
  @override
  final Profile? creator;
  @override
  final BuiltList<Song>? tracks;

  factory _$Playlist([void Function(PlaylistBuilder)? updates]) =>
      (new PlaylistBuilder()..update(updates))._build();

  _$Playlist._(
      {this.id,
      this.name,
      this.subscribed,
      this.subscribedCount,
      this.createTime,
      this.trackCount,
      this.description,
      this.coverImgId,
      this.coverImgId_str,
      this.coverImgUrl,
      this.playCount,
      this.specialType,
      this.creator,
      this.tracks})
      : super._();

  @override
  Playlist rebuild(void Function(PlaylistBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistBuilder toBuilder() => new PlaylistBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Playlist &&
        id == other.id &&
        name == other.name &&
        subscribed == other.subscribed &&
        subscribedCount == other.subscribedCount &&
        createTime == other.createTime &&
        trackCount == other.trackCount &&
        description == other.description &&
        coverImgId == other.coverImgId &&
        coverImgId_str == other.coverImgId_str &&
        coverImgUrl == other.coverImgUrl &&
        playCount == other.playCount &&
        specialType == other.specialType &&
        creator == other.creator &&
        tracks == other.tracks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        name.hashCode),
                                                    subscribed.hashCode),
                                                subscribedCount.hashCode),
                                            createTime.hashCode),
                                        trackCount.hashCode),
                                    description.hashCode),
                                coverImgId.hashCode),
                            coverImgId_str.hashCode),
                        coverImgUrl.hashCode),
                    playCount.hashCode),
                specialType.hashCode),
            creator.hashCode),
        tracks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Playlist')
          ..add('id', id)
          ..add('name', name)
          ..add('subscribed', subscribed)
          ..add('subscribedCount', subscribedCount)
          ..add('createTime', createTime)
          ..add('trackCount', trackCount)
          ..add('description', description)
          ..add('coverImgId', coverImgId)
          ..add('coverImgId_str', coverImgId_str)
          ..add('coverImgUrl', coverImgUrl)
          ..add('playCount', playCount)
          ..add('specialType', specialType)
          ..add('creator', creator)
          ..add('tracks', tracks))
        .toString();
  }
}

class PlaylistBuilder implements Builder<Playlist, PlaylistBuilder> {
  _$Playlist? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _subscribed;
  bool? get subscribed => _$this._subscribed;
  set subscribed(bool? subscribed) => _$this._subscribed = subscribed;

  int? _subscribedCount;
  int? get subscribedCount => _$this._subscribedCount;
  set subscribedCount(int? subscribedCount) =>
      _$this._subscribedCount = subscribedCount;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  int? _trackCount;
  int? get trackCount => _$this._trackCount;
  set trackCount(int? trackCount) => _$this._trackCount = trackCount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _coverImgId;
  int? get coverImgId => _$this._coverImgId;
  set coverImgId(int? coverImgId) => _$this._coverImgId = coverImgId;

  String? _coverImgId_str;
  String? get coverImgId_str => _$this._coverImgId_str;
  set coverImgId_str(String? coverImgId_str) =>
      _$this._coverImgId_str = coverImgId_str;

  String? _coverImgUrl;
  String? get coverImgUrl => _$this._coverImgUrl;
  set coverImgUrl(String? coverImgUrl) => _$this._coverImgUrl = coverImgUrl;

  int? _playCount;
  int? get playCount => _$this._playCount;
  set playCount(int? playCount) => _$this._playCount = playCount;

  int? _specialType;
  int? get specialType => _$this._specialType;
  set specialType(int? specialType) => _$this._specialType = specialType;

  ProfileBuilder? _creator;
  ProfileBuilder get creator => _$this._creator ??= new ProfileBuilder();
  set creator(ProfileBuilder? creator) => _$this._creator = creator;

  ListBuilder<Song>? _tracks;
  ListBuilder<Song> get tracks => _$this._tracks ??= new ListBuilder<Song>();
  set tracks(ListBuilder<Song>? tracks) => _$this._tracks = tracks;

  PlaylistBuilder();

  PlaylistBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _subscribed = $v.subscribed;
      _subscribedCount = $v.subscribedCount;
      _createTime = $v.createTime;
      _trackCount = $v.trackCount;
      _description = $v.description;
      _coverImgId = $v.coverImgId;
      _coverImgId_str = $v.coverImgId_str;
      _coverImgUrl = $v.coverImgUrl;
      _playCount = $v.playCount;
      _specialType = $v.specialType;
      _creator = $v.creator?.toBuilder();
      _tracks = $v.tracks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Playlist other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Playlist;
  }

  @override
  void update(void Function(PlaylistBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Playlist build() => _build();

  _$Playlist _build() {
    _$Playlist _$result;
    try {
      _$result = _$v ??
          new _$Playlist._(
              id: id,
              name: name,
              subscribed: subscribed,
              subscribedCount: subscribedCount,
              createTime: createTime,
              trackCount: trackCount,
              description: description,
              coverImgId: coverImgId,
              coverImgId_str: coverImgId_str,
              coverImgUrl: coverImgUrl,
              playCount: playCount,
              specialType: specialType,
              creator: _creator?.build(),
              tracks: _tracks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();
        _$failedField = 'tracks';
        _tracks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Playlist', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Playlists extends Playlists {
  @override
  final int? code;
  @override
  final bool? more;
  @override
  final BuiltList<Playlist> playlist;

  factory _$Playlists([void Function(PlaylistsBuilder)? updates]) =>
      (new PlaylistsBuilder()..update(updates))._build();

  _$Playlists._({this.code, this.more, required this.playlist}) : super._() {
    BuiltValueNullFieldError.checkNotNull(playlist, r'Playlists', 'playlist');
  }

  @override
  Playlists rebuild(void Function(PlaylistsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistsBuilder toBuilder() => new PlaylistsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Playlists &&
        code == other.code &&
        more == other.more &&
        playlist == other.playlist;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), more.hashCode), playlist.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Playlists')
          ..add('code', code)
          ..add('more', more)
          ..add('playlist', playlist))
        .toString();
  }
}

class PlaylistsBuilder implements Builder<Playlists, PlaylistsBuilder> {
  _$Playlists? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  bool? _more;
  bool? get more => _$this._more;
  set more(bool? more) => _$this._more = more;

  ListBuilder<Playlist>? _playlist;
  ListBuilder<Playlist> get playlist =>
      _$this._playlist ??= new ListBuilder<Playlist>();
  set playlist(ListBuilder<Playlist>? playlist) => _$this._playlist = playlist;

  PlaylistsBuilder();

  PlaylistsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _more = $v.more;
      _playlist = $v.playlist.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Playlists other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Playlists;
  }

  @override
  void update(void Function(PlaylistsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Playlists build() => _build();

  _$Playlists _build() {
    _$Playlists _$result;
    try {
      _$result = _$v ??
          new _$Playlists._(code: code, more: more, playlist: playlist.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'playlist';
        playlist.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Playlists', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
