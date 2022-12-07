// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
mixin _$PriceModel {
  PriceGroupModel get priceGroup => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceModelCopyWith<PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceModelCopyWith<$Res> {
  factory $PriceModelCopyWith(
          PriceModel value, $Res Function(PriceModel) then) =
      _$PriceModelCopyWithImpl<$Res, PriceModel>;
  @useResult
  $Res call({PriceGroupModel priceGroup, double value});

  $PriceGroupModelCopyWith<$Res> get priceGroup;
}

/// @nodoc
class _$PriceModelCopyWithImpl<$Res, $Val extends PriceModel>
    implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceGroup = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      priceGroup: null == priceGroup
          ? _value.priceGroup
          : priceGroup // ignore: cast_nullable_to_non_nullable
              as PriceGroupModel,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceGroupModelCopyWith<$Res> get priceGroup {
    return $PriceGroupModelCopyWith<$Res>(_value.priceGroup, (value) {
      return _then(_value.copyWith(priceGroup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PriceModelCopyWith<$Res>
    implements $PriceModelCopyWith<$Res> {
  factory _$$_PriceModelCopyWith(
          _$_PriceModel value, $Res Function(_$_PriceModel) then) =
      __$$_PriceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceGroupModel priceGroup, double value});

  @override
  $PriceGroupModelCopyWith<$Res> get priceGroup;
}

/// @nodoc
class __$$_PriceModelCopyWithImpl<$Res>
    extends _$PriceModelCopyWithImpl<$Res, _$_PriceModel>
    implements _$$_PriceModelCopyWith<$Res> {
  __$$_PriceModelCopyWithImpl(
      _$_PriceModel _value, $Res Function(_$_PriceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceGroup = null,
    Object? value = null,
  }) {
    return _then(_$_PriceModel(
      priceGroup: null == priceGroup
          ? _value.priceGroup
          : priceGroup // ignore: cast_nullable_to_non_nullable
              as PriceGroupModel,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceModel implements _PriceModel {
  const _$_PriceModel({required this.priceGroup, required this.value});

  factory _$_PriceModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceModelFromJson(json);

  @override
  final PriceGroupModel priceGroup;
  @override
  final double value;

  @override
  String toString() {
    return 'PriceModel(priceGroup: $priceGroup, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceModel &&
            (identical(other.priceGroup, priceGroup) ||
                other.priceGroup == priceGroup) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, priceGroup, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      __$$_PriceModelCopyWithImpl<_$_PriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceModelToJson(
      this,
    );
  }
}

abstract class _PriceModel implements PriceModel {
  const factory _PriceModel(
      {required final PriceGroupModel priceGroup,
      required final double value}) = _$_PriceModel;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$_PriceModel.fromJson;

  @override
  PriceGroupModel get priceGroup;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
