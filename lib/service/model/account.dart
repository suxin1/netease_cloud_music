import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
// import 'package:built_collection/built_collection.dart';

part 'account.g.dart';

abstract class Account implements Built<Account, AccountBuilder> {
  // Fields
  bool get anonimousUser;
  int get ban;
  int get baoyueVersion;
  DateTime get createTime;
  int get donateVersion;
  BigInt get id;
  String get salt;
  int get status;
  int get tokenVersion;
  int get type;
  String get userName;
  int get vipType;
  int get vipTypeVersion;
  int get whitelistAuthority;

  Account._();

  factory Account([void Function(AccountBuilder) updates]) = _$Account;

  static Serializer<Account> get serializer => _$accountSerializer;
}
