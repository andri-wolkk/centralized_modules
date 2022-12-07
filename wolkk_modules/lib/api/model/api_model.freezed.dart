// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiModel {
  Source get source => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiModelCopyWith<ApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiModelCopyWith<$Res> {
  factory $ApiModelCopyWith(ApiModel value, $Res Function(ApiModel) then) =
      _$ApiModelCopyWithImpl<$Res, ApiModel>;
  @useResult
  $Res call({Source source});
}

/// @nodoc
class _$ApiModelCopyWithImpl<$Res, $Val extends ApiModel>
    implements $ApiModelCopyWith<$Res> {
  _$ApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiModelCopyWith<$Res> implements $ApiModelCopyWith<$Res> {
  factory _$$_ApiModelCopyWith(
          _$_ApiModel value, $Res Function(_$_ApiModel) then) =
      __$$_ApiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Source source});
}

/// @nodoc
class __$$_ApiModelCopyWithImpl<$Res>
    extends _$ApiModelCopyWithImpl<$Res, _$_ApiModel>
    implements _$$_ApiModelCopyWith<$Res> {
  __$$_ApiModelCopyWithImpl(
      _$_ApiModel _value, $Res Function(_$_ApiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$_ApiModel(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
    ));
  }
}

/// @nodoc

class _$_ApiModel implements _ApiModel {
  const _$_ApiModel({required this.source});

  @override
  final Source source;

  @override
  String toString() {
    return 'ApiModel(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiModel &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiModelCopyWith<_$_ApiModel> get copyWith =>
      __$$_ApiModelCopyWithImpl<_$_ApiModel>(this, _$identity);
}

abstract class _ApiModel implements ApiModel {
  const factory _ApiModel({required final Source source}) = _$_ApiModel;

  @override
  Source get source;
  @override
  @JsonKey(ignore: true)
  _$$_ApiModelCopyWith<_$_ApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
