import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
// import 'package:built_collection/built_collection.dart';

part 'account.g.dart';

abstract class Account implements Built<Account, AccountBuilder> {
  // Fields
  @nullable
  bool get anonimousUser;
  @nullable
  int get ban;
  @nullable
  int get baoyueVersion;
  @nullable
  DateTime get createTime;
  @nullable
  int get donateVersion;
  @nullable
  BigInt get id;
  @nullable
  String get salt;
  @nullable
  int get status;
  @nullable
  int get tokenVersion;
  @nullable
  int get type;
  @nullable
  String get userName;
  @nullable
  int get vipType;
  @nullable
  int get vipTypeVersion;
  @nullable
  int get whitelistAuthority;

  Account._();

  factory Account([void Function(AccountBuilder) updates]) = _$Account;

  static Serializer<Account> get serializer => _$accountSerializer;
}
