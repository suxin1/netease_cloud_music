// GENERATED CODE - DO NOT MODIFY BY HAND

part of account_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Account> _$accountSerializer = new _$AccountSerializer();
Serializer<Profile> _$profileSerializer = new _$ProfileSerializer();
Serializer<Binding> _$bindingSerializer = new _$BindingSerializer();
Serializer<LoginResponse> _$loginResponseSerializer =
    new _$LoginResponseSerializer();

class _$AccountSerializer implements StructuredSerializer<Account> {
  @override
  final Iterable<Type> types = const [Account, _$Account];
  @override
  final String wireName = 'Account';

  @override
  Iterable<Object?> serialize(Serializers serializers, Account object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.anonimousUser;
    if (value != null) {
      result
        ..add('anonimousUser')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ban;
    if (value != null) {
      result
        ..add('ban')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.baoyueVersion;
    if (value != null) {
      result
        ..add('baoyueVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createTime;
    if (value != null) {
      result
        ..add('createTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.donateVersion;
    if (value != null) {
      result
        ..add('donateVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.salt;
    if (value != null) {
      result
        ..add('salt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tokenVersion;
    if (value != null) {
      result
        ..add('tokenVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vipType;
    if (value != null) {
      result
        ..add('vipType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vipTypeVersion;
    if (value != null) {
      result
        ..add('vipTypeVersion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.whitelistAuthority;
    if (value != null) {
      result
        ..add('whitelistAuthority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Account deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'anonimousUser':
          result.anonimousUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ban':
          result.ban = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'baoyueVersion':
          result.baoyueVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createTime':
          result.createTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'donateVersion':
          result.donateVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'salt':
          result.salt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tokenVersion':
          result.tokenVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vipType':
          result.vipType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vipTypeVersion':
          result.vipTypeVersion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'whitelistAuthority':
          result.whitelistAuthority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileSerializer implements StructuredSerializer<Profile> {
  @override
  final Iterable<Type> types = const [Profile, _$Profile];
  @override
  final String wireName = 'Profile';

  @override
  Iterable<Object?> serialize(Serializers serializers, Profile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accountStatus;
    if (value != null) {
      result
        ..add('accountStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.authStatus;
    if (value != null) {
      result
        ..add('authStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.authority;
    if (value != null) {
      result
        ..add('authority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avatarDetail;
    if (value != null) {
      result
        ..add('avatarDetail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarImgId;
    if (value != null) {
      result
        ..add('avatarImgId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avatarImgIdStr;
    if (value != null) {
      result
        ..add('avatarImgIdStr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarImgId_str;
    if (value != null) {
      result
        ..add('avatarImgId_str')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatarUrl;
    if (value != null) {
      result
        ..add('avatarUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.backgroundImgId;
    if (value != null) {
      result
        ..add('backgroundImgId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.backgroundImgIdStr;
    if (value != null) {
      result
        ..add('backgroundImgIdStr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.backgroundUrl;
    if (value != null) {
      result
        ..add('backgroundUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.defaultAvatar;
    if (value != null) {
      result
        ..add('defaultAvatar')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detailDescription;
    if (value != null) {
      result
        ..add('detailDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.djStatus;
    if (value != null) {
      result
        ..add('djStatus')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.eventCount;
    if (value != null) {
      result
        ..add('eventCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expertTags;
    if (value != null) {
      result
        ..add('expertTags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.followed;
    if (value != null) {
      result
        ..add('followed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.followeds;
    if (value != null) {
      result
        ..add('followeds')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.follows;
    if (value != null) {
      result
        ..add('follows')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mutual;
    if (value != null) {
      result
        ..add('mutual')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nickname;
    if (value != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playlistBeSubscribedCount;
    if (value != null) {
      result
        ..add('playlistBeSubscribedCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.playlistCount;
    if (value != null) {
      result
        ..add('playlistCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.province;
    if (value != null) {
      result
        ..add('province')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.remarkName;
    if (value != null) {
      result
        ..add('remarkName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.signature;
    if (value != null) {
      result
        ..add('signature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('userType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vipType;
    if (value != null) {
      result
        ..add('vipType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Profile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accountStatus':
          result.accountStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'authStatus':
          result.authStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'authority':
          result.authority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avatarDetail':
          result.avatarDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatarImgId':
          result.avatarImgId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avatarImgIdStr':
          result.avatarImgIdStr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatarImgId_str':
          result.avatarImgId_str = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatarUrl':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'backgroundImgId':
          result.backgroundImgId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'backgroundImgIdStr':
          result.backgroundImgIdStr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'backgroundUrl':
          result.backgroundUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'defaultAvatar':
          result.defaultAvatar = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detailDescription':
          result.detailDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'djStatus':
          result.djStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'eventCount':
          result.eventCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expertTags':
          result.expertTags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'followed':
          result.followed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'followeds':
          result.followeds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'follows':
          result.follows = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mutual':
          result.mutual = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'playlistBeSubscribedCount':
          result.playlistBeSubscribedCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'playlistCount':
          result.playlistCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'province':
          result.province = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'remarkName':
          result.remarkName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'signature':
          result.signature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userType':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vipType':
          result.vipType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$BindingSerializer implements StructuredSerializer<Binding> {
  @override
  final Iterable<Type> types = const [Binding, _$Binding];
  @override
  final String wireName = 'Binding';

  @override
  Iterable<Object?> serialize(Serializers serializers, Binding object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bindingTime;
    if (value != null) {
      result
        ..add('bindingTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.expiresIn;
    if (value != null) {
      result
        ..add('expiresIn')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expired;
    if (value != null) {
      result
        ..add('expired')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.refreshTime;
    if (value != null) {
      result
        ..add('refreshTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tokenJsonStr;
    if (value != null) {
      result
        ..add('tokenJsonStr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Binding deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BindingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bindingTime':
          result.bindingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'expiresIn':
          result.expiresIn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expired':
          result.expired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'refreshTime':
          result.refreshTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'tokenJsonStr':
          result.tokenJsonStr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponseSerializer implements StructuredSerializer<LoginResponse> {
  @override
  final Iterable<Type> types = const [LoginResponse, _$LoginResponse];
  @override
  final String wireName = 'LoginResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'account',
      serializers.serialize(object.account,
          specifiedType: const FullType(Account)),
      'profile',
      serializers.serialize(object.profile,
          specifiedType: const FullType(Profile)),
      'bindings',
      serializers.serialize(object.bindings,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Binding)])),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cookie;
    if (value != null) {
      result
        ..add('cookie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loginType;
    if (value != null) {
      result
        ..add('loginType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'account':
          result.account.replace(serializers.deserialize(value,
              specifiedType: const FullType(Account))! as Account);
          break;
        case 'profile':
          result.profile.replace(serializers.deserialize(value,
              specifiedType: const FullType(Profile))! as Profile);
          break;
        case 'bindings':
          result.bindings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Binding)]))!
              as BuiltList<Object?>);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cookie':
          result.cookie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loginType':
          result.loginType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Account extends Account {
  @override
  final bool? anonimousUser;
  @override
  final int? ban;
  @override
  final int? baoyueVersion;
  @override
  final DateTime? createTime;
  @override
  final int? donateVersion;
  @override
  final int? id;
  @override
  final String? salt;
  @override
  final int? status;
  @override
  final int? tokenVersion;
  @override
  final int? type;
  @override
  final String? userName;
  @override
  final int? vipType;
  @override
  final int? vipTypeVersion;
  @override
  final int? whitelistAuthority;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates))._build();

  _$Account._(
      {this.anonimousUser,
      this.ban,
      this.baoyueVersion,
      this.createTime,
      this.donateVersion,
      this.id,
      this.salt,
      this.status,
      this.tokenVersion,
      this.type,
      this.userName,
      this.vipType,
      this.vipTypeVersion,
      this.whitelistAuthority})
      : super._();

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        anonimousUser == other.anonimousUser &&
        ban == other.ban &&
        baoyueVersion == other.baoyueVersion &&
        createTime == other.createTime &&
        donateVersion == other.donateVersion &&
        id == other.id &&
        salt == other.salt &&
        status == other.status &&
        tokenVersion == other.tokenVersion &&
        type == other.type &&
        userName == other.userName &&
        vipType == other.vipType &&
        vipTypeVersion == other.vipTypeVersion &&
        whitelistAuthority == other.whitelistAuthority;
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
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            anonimousUser
                                                                .hashCode),
                                                        ban.hashCode),
                                                    baoyueVersion.hashCode),
                                                createTime.hashCode),
                                            donateVersion.hashCode),
                                        id.hashCode),
                                    salt.hashCode),
                                status.hashCode),
                            tokenVersion.hashCode),
                        type.hashCode),
                    userName.hashCode),
                vipType.hashCode),
            vipTypeVersion.hashCode),
        whitelistAuthority.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Account')
          ..add('anonimousUser', anonimousUser)
          ..add('ban', ban)
          ..add('baoyueVersion', baoyueVersion)
          ..add('createTime', createTime)
          ..add('donateVersion', donateVersion)
          ..add('id', id)
          ..add('salt', salt)
          ..add('status', status)
          ..add('tokenVersion', tokenVersion)
          ..add('type', type)
          ..add('userName', userName)
          ..add('vipType', vipType)
          ..add('vipTypeVersion', vipTypeVersion)
          ..add('whitelistAuthority', whitelistAuthority))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  bool? _anonimousUser;
  bool? get anonimousUser => _$this._anonimousUser;
  set anonimousUser(bool? anonimousUser) =>
      _$this._anonimousUser = anonimousUser;

  int? _ban;
  int? get ban => _$this._ban;
  set ban(int? ban) => _$this._ban = ban;

  int? _baoyueVersion;
  int? get baoyueVersion => _$this._baoyueVersion;
  set baoyueVersion(int? baoyueVersion) =>
      _$this._baoyueVersion = baoyueVersion;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  int? _donateVersion;
  int? get donateVersion => _$this._donateVersion;
  set donateVersion(int? donateVersion) =>
      _$this._donateVersion = donateVersion;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  int? _tokenVersion;
  int? get tokenVersion => _$this._tokenVersion;
  set tokenVersion(int? tokenVersion) => _$this._tokenVersion = tokenVersion;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  int? _vipType;
  int? get vipType => _$this._vipType;
  set vipType(int? vipType) => _$this._vipType = vipType;

  int? _vipTypeVersion;
  int? get vipTypeVersion => _$this._vipTypeVersion;
  set vipTypeVersion(int? vipTypeVersion) =>
      _$this._vipTypeVersion = vipTypeVersion;

  int? _whitelistAuthority;
  int? get whitelistAuthority => _$this._whitelistAuthority;
  set whitelistAuthority(int? whitelistAuthority) =>
      _$this._whitelistAuthority = whitelistAuthority;

  AccountBuilder();

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anonimousUser = $v.anonimousUser;
      _ban = $v.ban;
      _baoyueVersion = $v.baoyueVersion;
      _createTime = $v.createTime;
      _donateVersion = $v.donateVersion;
      _id = $v.id;
      _salt = $v.salt;
      _status = $v.status;
      _tokenVersion = $v.tokenVersion;
      _type = $v.type;
      _userName = $v.userName;
      _vipType = $v.vipType;
      _vipTypeVersion = $v.vipTypeVersion;
      _whitelistAuthority = $v.whitelistAuthority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Account build() => _build();

  _$Account _build() {
    final _$result = _$v ??
        new _$Account._(
            anonimousUser: anonimousUser,
            ban: ban,
            baoyueVersion: baoyueVersion,
            createTime: createTime,
            donateVersion: donateVersion,
            id: id,
            salt: salt,
            status: status,
            tokenVersion: tokenVersion,
            type: type,
            userName: userName,
            vipType: vipType,
            vipTypeVersion: vipTypeVersion,
            whitelistAuthority: whitelistAuthority);
    replace(_$result);
    return _$result;
  }
}

class _$Profile extends Profile {
  @override
  final int? accountStatus;
  @override
  final int? authStatus;
  @override
  final int? authority;
  @override
  final String? avatarDetail;
  @override
  final int? avatarImgId;
  @override
  final String? avatarImgIdStr;
  @override
  final String? avatarImgId_str;
  @override
  final String? avatarUrl;
  @override
  final int? backgroundImgId;
  @override
  final String? backgroundImgIdStr;
  @override
  final String? backgroundUrl;
  @override
  final int? birthday;
  @override
  final int? city;
  @override
  final bool? defaultAvatar;
  @override
  final String? description;
  @override
  final String? detailDescription;
  @override
  final int? djStatus;
  @override
  final int? eventCount;
  @override
  final BuiltList<String>? expertTags;
  @override
  final bool? followed;
  @override
  final int? followeds;
  @override
  final int? follows;
  @override
  final int? gender;
  @override
  final bool? mutual;
  @override
  final String? nickname;
  @override
  final int? playlistBeSubscribedCount;
  @override
  final int? playlistCount;
  @override
  final int? province;
  @override
  final String? remarkName;
  @override
  final String? signature;
  @override
  final int? userId;
  @override
  final int? userType;
  @override
  final int? vipType;

  factory _$Profile([void Function(ProfileBuilder)? updates]) =>
      (new ProfileBuilder()..update(updates))._build();

  _$Profile._(
      {this.accountStatus,
      this.authStatus,
      this.authority,
      this.avatarDetail,
      this.avatarImgId,
      this.avatarImgIdStr,
      this.avatarImgId_str,
      this.avatarUrl,
      this.backgroundImgId,
      this.backgroundImgIdStr,
      this.backgroundUrl,
      this.birthday,
      this.city,
      this.defaultAvatar,
      this.description,
      this.detailDescription,
      this.djStatus,
      this.eventCount,
      this.expertTags,
      this.followed,
      this.followeds,
      this.follows,
      this.gender,
      this.mutual,
      this.nickname,
      this.playlistBeSubscribedCount,
      this.playlistCount,
      this.province,
      this.remarkName,
      this.signature,
      this.userId,
      this.userType,
      this.vipType})
      : super._();

  @override
  Profile rebuild(void Function(ProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBuilder toBuilder() => new ProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
        accountStatus == other.accountStatus &&
        authStatus == other.authStatus &&
        authority == other.authority &&
        avatarDetail == other.avatarDetail &&
        avatarImgId == other.avatarImgId &&
        avatarImgIdStr == other.avatarImgIdStr &&
        avatarImgId_str == other.avatarImgId_str &&
        avatarUrl == other.avatarUrl &&
        backgroundImgId == other.backgroundImgId &&
        backgroundImgIdStr == other.backgroundImgIdStr &&
        backgroundUrl == other.backgroundUrl &&
        birthday == other.birthday &&
        city == other.city &&
        defaultAvatar == other.defaultAvatar &&
        description == other.description &&
        detailDescription == other.detailDescription &&
        djStatus == other.djStatus &&
        eventCount == other.eventCount &&
        expertTags == other.expertTags &&
        followed == other.followed &&
        followeds == other.followeds &&
        follows == other.follows &&
        gender == other.gender &&
        mutual == other.mutual &&
        nickname == other.nickname &&
        playlistBeSubscribedCount == other.playlistBeSubscribedCount &&
        playlistCount == other.playlistCount &&
        province == other.province &&
        remarkName == other.remarkName &&
        signature == other.signature &&
        userId == other.userId &&
        userType == other.userType &&
        vipType == other.vipType;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, accountStatus.hashCode), authStatus.hashCode), authority.hashCode), avatarDetail.hashCode), avatarImgId.hashCode), avatarImgIdStr.hashCode), avatarImgId_str.hashCode), avatarUrl.hashCode), backgroundImgId.hashCode), backgroundImgIdStr.hashCode), backgroundUrl.hashCode), birthday.hashCode), city.hashCode), defaultAvatar.hashCode),
                                                                                description.hashCode),
                                                                            detailDescription.hashCode),
                                                                        djStatus.hashCode),
                                                                    eventCount.hashCode),
                                                                expertTags.hashCode),
                                                            followed.hashCode),
                                                        followeds.hashCode),
                                                    follows.hashCode),
                                                gender.hashCode),
                                            mutual.hashCode),
                                        nickname.hashCode),
                                    playlistBeSubscribedCount.hashCode),
                                playlistCount.hashCode),
                            province.hashCode),
                        remarkName.hashCode),
                    signature.hashCode),
                userId.hashCode),
            userType.hashCode),
        vipType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Profile')
          ..add('accountStatus', accountStatus)
          ..add('authStatus', authStatus)
          ..add('authority', authority)
          ..add('avatarDetail', avatarDetail)
          ..add('avatarImgId', avatarImgId)
          ..add('avatarImgIdStr', avatarImgIdStr)
          ..add('avatarImgId_str', avatarImgId_str)
          ..add('avatarUrl', avatarUrl)
          ..add('backgroundImgId', backgroundImgId)
          ..add('backgroundImgIdStr', backgroundImgIdStr)
          ..add('backgroundUrl', backgroundUrl)
          ..add('birthday', birthday)
          ..add('city', city)
          ..add('defaultAvatar', defaultAvatar)
          ..add('description', description)
          ..add('detailDescription', detailDescription)
          ..add('djStatus', djStatus)
          ..add('eventCount', eventCount)
          ..add('expertTags', expertTags)
          ..add('followed', followed)
          ..add('followeds', followeds)
          ..add('follows', follows)
          ..add('gender', gender)
          ..add('mutual', mutual)
          ..add('nickname', nickname)
          ..add('playlistBeSubscribedCount', playlistBeSubscribedCount)
          ..add('playlistCount', playlistCount)
          ..add('province', province)
          ..add('remarkName', remarkName)
          ..add('signature', signature)
          ..add('userId', userId)
          ..add('userType', userType)
          ..add('vipType', vipType))
        .toString();
  }
}

class ProfileBuilder implements Builder<Profile, ProfileBuilder> {
  _$Profile? _$v;

  int? _accountStatus;
  int? get accountStatus => _$this._accountStatus;
  set accountStatus(int? accountStatus) =>
      _$this._accountStatus = accountStatus;

  int? _authStatus;
  int? get authStatus => _$this._authStatus;
  set authStatus(int? authStatus) => _$this._authStatus = authStatus;

  int? _authority;
  int? get authority => _$this._authority;
  set authority(int? authority) => _$this._authority = authority;

  String? _avatarDetail;
  String? get avatarDetail => _$this._avatarDetail;
  set avatarDetail(String? avatarDetail) => _$this._avatarDetail = avatarDetail;

  int? _avatarImgId;
  int? get avatarImgId => _$this._avatarImgId;
  set avatarImgId(int? avatarImgId) => _$this._avatarImgId = avatarImgId;

  String? _avatarImgIdStr;
  String? get avatarImgIdStr => _$this._avatarImgIdStr;
  set avatarImgIdStr(String? avatarImgIdStr) =>
      _$this._avatarImgIdStr = avatarImgIdStr;

  String? _avatarImgId_str;
  String? get avatarImgId_str => _$this._avatarImgId_str;
  set avatarImgId_str(String? avatarImgId_str) =>
      _$this._avatarImgId_str = avatarImgId_str;

  String? _avatarUrl;
  String? get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String? avatarUrl) => _$this._avatarUrl = avatarUrl;

  int? _backgroundImgId;
  int? get backgroundImgId => _$this._backgroundImgId;
  set backgroundImgId(int? backgroundImgId) =>
      _$this._backgroundImgId = backgroundImgId;

  String? _backgroundImgIdStr;
  String? get backgroundImgIdStr => _$this._backgroundImgIdStr;
  set backgroundImgIdStr(String? backgroundImgIdStr) =>
      _$this._backgroundImgIdStr = backgroundImgIdStr;

  String? _backgroundUrl;
  String? get backgroundUrl => _$this._backgroundUrl;
  set backgroundUrl(String? backgroundUrl) =>
      _$this._backgroundUrl = backgroundUrl;

  int? _birthday;
  int? get birthday => _$this._birthday;
  set birthday(int? birthday) => _$this._birthday = birthday;

  int? _city;
  int? get city => _$this._city;
  set city(int? city) => _$this._city = city;

  bool? _defaultAvatar;
  bool? get defaultAvatar => _$this._defaultAvatar;
  set defaultAvatar(bool? defaultAvatar) =>
      _$this._defaultAvatar = defaultAvatar;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _detailDescription;
  String? get detailDescription => _$this._detailDescription;
  set detailDescription(String? detailDescription) =>
      _$this._detailDescription = detailDescription;

  int? _djStatus;
  int? get djStatus => _$this._djStatus;
  set djStatus(int? djStatus) => _$this._djStatus = djStatus;

  int? _eventCount;
  int? get eventCount => _$this._eventCount;
  set eventCount(int? eventCount) => _$this._eventCount = eventCount;

  ListBuilder<String>? _expertTags;
  ListBuilder<String> get expertTags =>
      _$this._expertTags ??= new ListBuilder<String>();
  set expertTags(ListBuilder<String>? expertTags) =>
      _$this._expertTags = expertTags;

  bool? _followed;
  bool? get followed => _$this._followed;
  set followed(bool? followed) => _$this._followed = followed;

  int? _followeds;
  int? get followeds => _$this._followeds;
  set followeds(int? followeds) => _$this._followeds = followeds;

  int? _follows;
  int? get follows => _$this._follows;
  set follows(int? follows) => _$this._follows = follows;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  bool? _mutual;
  bool? get mutual => _$this._mutual;
  set mutual(bool? mutual) => _$this._mutual = mutual;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  int? _playlistBeSubscribedCount;
  int? get playlistBeSubscribedCount => _$this._playlistBeSubscribedCount;
  set playlistBeSubscribedCount(int? playlistBeSubscribedCount) =>
      _$this._playlistBeSubscribedCount = playlistBeSubscribedCount;

  int? _playlistCount;
  int? get playlistCount => _$this._playlistCount;
  set playlistCount(int? playlistCount) =>
      _$this._playlistCount = playlistCount;

  int? _province;
  int? get province => _$this._province;
  set province(int? province) => _$this._province = province;

  String? _remarkName;
  String? get remarkName => _$this._remarkName;
  set remarkName(String? remarkName) => _$this._remarkName = remarkName;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _userType;
  int? get userType => _$this._userType;
  set userType(int? userType) => _$this._userType = userType;

  int? _vipType;
  int? get vipType => _$this._vipType;
  set vipType(int? vipType) => _$this._vipType = vipType;

  ProfileBuilder();

  ProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountStatus = $v.accountStatus;
      _authStatus = $v.authStatus;
      _authority = $v.authority;
      _avatarDetail = $v.avatarDetail;
      _avatarImgId = $v.avatarImgId;
      _avatarImgIdStr = $v.avatarImgIdStr;
      _avatarImgId_str = $v.avatarImgId_str;
      _avatarUrl = $v.avatarUrl;
      _backgroundImgId = $v.backgroundImgId;
      _backgroundImgIdStr = $v.backgroundImgIdStr;
      _backgroundUrl = $v.backgroundUrl;
      _birthday = $v.birthday;
      _city = $v.city;
      _defaultAvatar = $v.defaultAvatar;
      _description = $v.description;
      _detailDescription = $v.detailDescription;
      _djStatus = $v.djStatus;
      _eventCount = $v.eventCount;
      _expertTags = $v.expertTags?.toBuilder();
      _followed = $v.followed;
      _followeds = $v.followeds;
      _follows = $v.follows;
      _gender = $v.gender;
      _mutual = $v.mutual;
      _nickname = $v.nickname;
      _playlistBeSubscribedCount = $v.playlistBeSubscribedCount;
      _playlistCount = $v.playlistCount;
      _province = $v.province;
      _remarkName = $v.remarkName;
      _signature = $v.signature;
      _userId = $v.userId;
      _userType = $v.userType;
      _vipType = $v.vipType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Profile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Profile;
  }

  @override
  void update(void Function(ProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Profile build() => _build();

  _$Profile _build() {
    _$Profile _$result;
    try {
      _$result = _$v ??
          new _$Profile._(
              accountStatus: accountStatus,
              authStatus: authStatus,
              authority: authority,
              avatarDetail: avatarDetail,
              avatarImgId: avatarImgId,
              avatarImgIdStr: avatarImgIdStr,
              avatarImgId_str: avatarImgId_str,
              avatarUrl: avatarUrl,
              backgroundImgId: backgroundImgId,
              backgroundImgIdStr: backgroundImgIdStr,
              backgroundUrl: backgroundUrl,
              birthday: birthday,
              city: city,
              defaultAvatar: defaultAvatar,
              description: description,
              detailDescription: detailDescription,
              djStatus: djStatus,
              eventCount: eventCount,
              expertTags: _expertTags?.build(),
              followed: followed,
              followeds: followeds,
              follows: follows,
              gender: gender,
              mutual: mutual,
              nickname: nickname,
              playlistBeSubscribedCount: playlistBeSubscribedCount,
              playlistCount: playlistCount,
              province: province,
              remarkName: remarkName,
              signature: signature,
              userId: userId,
              userType: userType,
              vipType: vipType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expertTags';
        _expertTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Profile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Binding extends Binding {
  @override
  final DateTime? bindingTime;
  @override
  final int? expiresIn;
  @override
  final bool? expired;
  @override
  final int? id;
  @override
  final DateTime? refreshTime;
  @override
  final String? tokenJsonStr;
  @override
  final int? type;
  @override
  final String? url;
  @override
  final int? userId;

  factory _$Binding([void Function(BindingBuilder)? updates]) =>
      (new BindingBuilder()..update(updates))._build();

  _$Binding._(
      {this.bindingTime,
      this.expiresIn,
      this.expired,
      this.id,
      this.refreshTime,
      this.tokenJsonStr,
      this.type,
      this.url,
      this.userId})
      : super._();

  @override
  Binding rebuild(void Function(BindingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BindingBuilder toBuilder() => new BindingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Binding &&
        bindingTime == other.bindingTime &&
        expiresIn == other.expiresIn &&
        expired == other.expired &&
        id == other.id &&
        refreshTime == other.refreshTime &&
        tokenJsonStr == other.tokenJsonStr &&
        type == other.type &&
        url == other.url &&
        userId == other.userId;
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
                                $jc($jc(0, bindingTime.hashCode),
                                    expiresIn.hashCode),
                                expired.hashCode),
                            id.hashCode),
                        refreshTime.hashCode),
                    tokenJsonStr.hashCode),
                type.hashCode),
            url.hashCode),
        userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Binding')
          ..add('bindingTime', bindingTime)
          ..add('expiresIn', expiresIn)
          ..add('expired', expired)
          ..add('id', id)
          ..add('refreshTime', refreshTime)
          ..add('tokenJsonStr', tokenJsonStr)
          ..add('type', type)
          ..add('url', url)
          ..add('userId', userId))
        .toString();
  }
}

class BindingBuilder implements Builder<Binding, BindingBuilder> {
  _$Binding? _$v;

  DateTime? _bindingTime;
  DateTime? get bindingTime => _$this._bindingTime;
  set bindingTime(DateTime? bindingTime) => _$this._bindingTime = bindingTime;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  bool? _expired;
  bool? get expired => _$this._expired;
  set expired(bool? expired) => _$this._expired = expired;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _refreshTime;
  DateTime? get refreshTime => _$this._refreshTime;
  set refreshTime(DateTime? refreshTime) => _$this._refreshTime = refreshTime;

  String? _tokenJsonStr;
  String? get tokenJsonStr => _$this._tokenJsonStr;
  set tokenJsonStr(String? tokenJsonStr) => _$this._tokenJsonStr = tokenJsonStr;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  BindingBuilder();

  BindingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bindingTime = $v.bindingTime;
      _expiresIn = $v.expiresIn;
      _expired = $v.expired;
      _id = $v.id;
      _refreshTime = $v.refreshTime;
      _tokenJsonStr = $v.tokenJsonStr;
      _type = $v.type;
      _url = $v.url;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Binding other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Binding;
  }

  @override
  void update(void Function(BindingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Binding build() => _build();

  _$Binding _build() {
    final _$result = _$v ??
        new _$Binding._(
            bindingTime: bindingTime,
            expiresIn: expiresIn,
            expired: expired,
            id: id,
            refreshTime: refreshTime,
            tokenJsonStr: tokenJsonStr,
            type: type,
            url: url,
            userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$LoginResponse extends LoginResponse {
  @override
  final Account account;
  @override
  final Profile profile;
  @override
  final BuiltList<Binding> bindings;
  @override
  final int? code;
  @override
  final String? cookie;
  @override
  final int? loginType;
  @override
  final String? token;

  factory _$LoginResponse([void Function(LoginResponseBuilder)? updates]) =>
      (new LoginResponseBuilder()..update(updates))._build();

  _$LoginResponse._(
      {required this.account,
      required this.profile,
      required this.bindings,
      this.code,
      this.cookie,
      this.loginType,
      this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(account, r'LoginResponse', 'account');
    BuiltValueNullFieldError.checkNotNull(profile, r'LoginResponse', 'profile');
    BuiltValueNullFieldError.checkNotNull(
        bindings, r'LoginResponse', 'bindings');
  }

  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => new LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse &&
        account == other.account &&
        profile == other.profile &&
        bindings == other.bindings &&
        code == other.code &&
        cookie == other.cookie &&
        loginType == other.loginType &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, account.hashCode), profile.hashCode),
                        bindings.hashCode),
                    code.hashCode),
                cookie.hashCode),
            loginType.hashCode),
        token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponse')
          ..add('account', account)
          ..add('profile', profile)
          ..add('bindings', bindings)
          ..add('code', code)
          ..add('cookie', cookie)
          ..add('loginType', loginType)
          ..add('token', token))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= new AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  ProfileBuilder? _profile;
  ProfileBuilder get profile => _$this._profile ??= new ProfileBuilder();
  set profile(ProfileBuilder? profile) => _$this._profile = profile;

  ListBuilder<Binding>? _bindings;
  ListBuilder<Binding> get bindings =>
      _$this._bindings ??= new ListBuilder<Binding>();
  set bindings(ListBuilder<Binding>? bindings) => _$this._bindings = bindings;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _cookie;
  String? get cookie => _$this._cookie;
  set cookie(String? cookie) => _$this._cookie = cookie;

  int? _loginType;
  int? get loginType => _$this._loginType;
  set loginType(int? loginType) => _$this._loginType = loginType;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  LoginResponseBuilder();

  LoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _profile = $v.profile.toBuilder();
      _bindings = $v.bindings.toBuilder();
      _code = $v.code;
      _cookie = $v.cookie;
      _loginType = $v.loginType;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponse build() => _build();

  _$LoginResponse _build() {
    _$LoginResponse _$result;
    try {
      _$result = _$v ??
          new _$LoginResponse._(
              account: account.build(),
              profile: profile.build(),
              bindings: bindings.build(),
              code: code,
              cookie: cookie,
              loginType: loginType,
              token: token);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();
        _$failedField = 'profile';
        profile.build();
        _$failedField = 'bindings';
        bindings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
