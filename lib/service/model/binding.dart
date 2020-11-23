library binding;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

part 'binding.g.dart';

abstract class Binding implements Built<Binding, BindingBuilder> {
  // Fields
  @nullable
  DateTime get bindingTime;
  @nullable
  BigInt get expiresIn;
  @nullable
  bool get expired;
  @nullable
  BigInt get id;
  @nullable
  DateTime get refreshTime;
  @nullable
  String get tokenJsonStr;
  @nullable
  int get type;
  @nullable
  String get url;
  @nullable
  BigInt get userId;

  Binding._();

  factory Binding([void Function(BindingBuilder) updates]) = _$Binding;
  static Serializer<Binding> get serializer => _$bindingSerializer;
}
