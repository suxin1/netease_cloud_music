library binding;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

part 'binding.g.dart';

abstract class Binding implements Built<Binding, BindingBuilder> {
  // Fields
  DateTime get bindingTime;
  BigInt get expiresIn;
  bool get expired;
  BigInt get id;
  DateTime get refreshTime;
  String get tokenJsonStr;
  int get type;
  String get url;
  BigInt get userId;

  Binding._();

  factory Binding([void Function(BindingBuilder) updates]) = _$Binding;
  static Serializer<Binding> get serializer => _$bindingSerializer;
}
