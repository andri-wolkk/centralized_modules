// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'description_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DescriptionModel _$DescriptionModelFromJson(Map<String, dynamic> json) {
  return _DescriptionModel.fromJson(json);
}

/// @nodoc
mixin _$DescriptionModel {
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionModelCopyWith<DescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionModelCopyWith<$Res> {
  factory $DescriptionModelCopyWith(
          DescriptionModel value, $Res Function(DescriptionModel) then) =
      _$DescriptionModelCopyWithImpl<$Res, DescriptionModel>;
  @useResult
  $Res call({String text, String type});
}

/// @nodoc
class _$DescriptionModelCopyWithImpl<$Res, $Val extends DescriptionModel>
    implements $DescriptionModelCopyWith<$Res> {
  _$DescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DescriptionModelCopyWith<$Res>
    implements $DescriptionModelCopyWith<$Res> {
  factory _$$_DescriptionModelCopyWith(
          _$_DescriptionModel value, $Res Function(_$_DescriptionModel) then) =
      __$$_DescriptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String type});
}

/// @nodoc
class __$$_DescriptionModelCopyWithImpl<$Res>
    extends _$DescriptionModelCopyWithImpl<$Res, _$_DescriptionModel>
    implements _$$_DescriptionModelCopyWith<$Res> {
  __$$_DescriptionModelCopyWithImpl(
      _$_DescriptionModel _value, $Res Function(_$_DescriptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
  }) {
    return _then(_$_DescriptionModel(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DescriptionModel implements _DescriptionModel {
  const _$_DescriptionModel({required this.text, required this.type});

  factory _$_DescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DescriptionModelFromJson(json);

  @override
  final String text;
  @override
  final String type;

  @override
  String toString() {
    return 'DescriptionModel(text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionModelCopyWith<_$_DescriptionModel> get copyWith =>
      __$$_DescriptionModelCopyWithImpl<_$_DescriptionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescriptionModelToJson(
      this,
    );
  }
}

abstract class _DescriptionModel implements DescriptionModel {
  const factory _DescriptionModel(
      {required final String text,
      required final String type}) = _$_DescriptionModel;

  factory _DescriptionModel.fromJson(Map<String, dynamic> json) =
      _$_DescriptionModel.fromJson;

  @override
  String get text;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionModelCopyWith<_$_DescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
