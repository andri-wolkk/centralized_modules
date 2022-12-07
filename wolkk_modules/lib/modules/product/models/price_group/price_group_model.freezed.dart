// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceGroupModel _$PriceGroupModelFromJson(Map<String, dynamic> json) {
  return _PriceGroupModel.fromJson(json);
}

/// @nodoc
mixin _$PriceGroupModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceGroupModelCopyWith<PriceGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceGroupModelCopyWith<$Res> {
  factory $PriceGroupModelCopyWith(
          PriceGroupModel value, $Res Function(PriceGroupModel) then) =
      _$PriceGroupModelCopyWithImpl<$Res, PriceGroupModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$PriceGroupModelCopyWithImpl<$Res, $Val extends PriceGroupModel>
    implements $PriceGroupModelCopyWith<$Res> {
  _$PriceGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceGroupModelCopyWith<$Res>
    implements $PriceGroupModelCopyWith<$Res> {
  factory _$$_PriceGroupModelCopyWith(
          _$_PriceGroupModel value, $Res Function(_$_PriceGroupModel) then) =
      __$$_PriceGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_PriceGroupModelCopyWithImpl<$Res>
    extends _$PriceGroupModelCopyWithImpl<$Res, _$_PriceGroupModel>
    implements _$$_PriceGroupModelCopyWith<$Res> {
  __$$_PriceGroupModelCopyWithImpl(
      _$_PriceGroupModel _value, $Res Function(_$_PriceGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_PriceGroupModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceGroupModel implements _PriceGroupModel {
  const _$_PriceGroupModel({required this.id, required this.name});

  factory _$_PriceGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceGroupModelFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PriceGroupModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceGroupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceGroupModelCopyWith<_$_PriceGroupModel> get copyWith =>
      __$$_PriceGroupModelCopyWithImpl<_$_PriceGroupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceGroupModelToJson(
      this,
    );
  }
}

abstract class _PriceGroupModel implements PriceGroupModel {
  const factory _PriceGroupModel(
      {required final String id,
      required final String name}) = _$_PriceGroupModel;

  factory _PriceGroupModel.fromJson(Map<String, dynamic> json) =
      _$_PriceGroupModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PriceGroupModelCopyWith<_$_PriceGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
