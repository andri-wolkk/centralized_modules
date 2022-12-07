// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AmountModel _$AmountModelFromJson(Map<String, dynamic> json) {
  return _AmountModel.fromJson(json);
}

/// @nodoc
mixin _$AmountModel {
  double get actual => throw _privateConstructorUsedError;
  double get lent => throw _privateConstructorUsedError;
  double get ordered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountModelCopyWith<AmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountModelCopyWith<$Res> {
  factory $AmountModelCopyWith(
          AmountModel value, $Res Function(AmountModel) then) =
      _$AmountModelCopyWithImpl<$Res, AmountModel>;
  @useResult
  $Res call({double actual, double lent, double ordered});
}

/// @nodoc
class _$AmountModelCopyWithImpl<$Res, $Val extends AmountModel>
    implements $AmountModelCopyWith<$Res> {
  _$AmountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actual = null,
    Object? lent = null,
    Object? ordered = null,
  }) {
    return _then(_value.copyWith(
      actual: null == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as double,
      lent: null == lent
          ? _value.lent
          : lent // ignore: cast_nullable_to_non_nullable
              as double,
      ordered: null == ordered
          ? _value.ordered
          : ordered // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AmountModelCopyWith<$Res>
    implements $AmountModelCopyWith<$Res> {
  factory _$$_AmountModelCopyWith(
          _$_AmountModel value, $Res Function(_$_AmountModel) then) =
      __$$_AmountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double actual, double lent, double ordered});
}

/// @nodoc
class __$$_AmountModelCopyWithImpl<$Res>
    extends _$AmountModelCopyWithImpl<$Res, _$_AmountModel>
    implements _$$_AmountModelCopyWith<$Res> {
  __$$_AmountModelCopyWithImpl(
      _$_AmountModel _value, $Res Function(_$_AmountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actual = null,
    Object? lent = null,
    Object? ordered = null,
  }) {
    return _then(_$_AmountModel(
      actual: null == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as double,
      lent: null == lent
          ? _value.lent
          : lent // ignore: cast_nullable_to_non_nullable
              as double,
      ordered: null == ordered
          ? _value.ordered
          : ordered // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmountModel implements _AmountModel {
  const _$_AmountModel({this.actual = 0, this.lent = 0, this.ordered = 0});

  factory _$_AmountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AmountModelFromJson(json);

  @override
  @JsonKey()
  final double actual;
  @override
  @JsonKey()
  final double lent;
  @override
  @JsonKey()
  final double ordered;

  @override
  String toString() {
    return 'AmountModel(actual: $actual, lent: $lent, ordered: $ordered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountModel &&
            (identical(other.actual, actual) || other.actual == actual) &&
            (identical(other.lent, lent) || other.lent == lent) &&
            (identical(other.ordered, ordered) || other.ordered == ordered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actual, lent, ordered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountModelCopyWith<_$_AmountModel> get copyWith =>
      __$$_AmountModelCopyWithImpl<_$_AmountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmountModelToJson(
      this,
    );
  }
}

abstract class _AmountModel implements AmountModel {
  const factory _AmountModel(
      {final double actual,
      final double lent,
      final double ordered}) = _$_AmountModel;

  factory _AmountModel.fromJson(Map<String, dynamic> json) =
      _$_AmountModel.fromJson;

  @override
  double get actual;
  @override
  double get lent;
  @override
  double get ordered;
  @override
  @JsonKey(ignore: true)
  _$$_AmountModelCopyWith<_$_AmountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
