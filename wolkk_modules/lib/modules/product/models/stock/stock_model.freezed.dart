// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockModel _$StockModelFromJson(Map<String, dynamic> json) {
  return _StockModel.fromJson(json);
}

/// @nodoc
mixin _$StockModel {
  AmountModel get amount => throw _privateConstructorUsedError;
  WarehouseModel get warehouse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockModelCopyWith<StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(
          StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res, StockModel>;
  @useResult
  $Res call({AmountModel amount, WarehouseModel warehouse});

  $AmountModelCopyWith<$Res> get amount;
  $WarehouseModelCopyWith<$Res> get warehouse;
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res, $Val extends StockModel>
    implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? warehouse = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as WarehouseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountModelCopyWith<$Res> get amount {
    return $AmountModelCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseModelCopyWith<$Res> get warehouse {
    return $WarehouseModelCopyWith<$Res>(_value.warehouse, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StockModelCopyWith<$Res>
    implements $StockModelCopyWith<$Res> {
  factory _$$_StockModelCopyWith(
          _$_StockModel value, $Res Function(_$_StockModel) then) =
      __$$_StockModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AmountModel amount, WarehouseModel warehouse});

  @override
  $AmountModelCopyWith<$Res> get amount;
  @override
  $WarehouseModelCopyWith<$Res> get warehouse;
}

/// @nodoc
class __$$_StockModelCopyWithImpl<$Res>
    extends _$StockModelCopyWithImpl<$Res, _$_StockModel>
    implements _$$_StockModelCopyWith<$Res> {
  __$$_StockModelCopyWithImpl(
      _$_StockModel _value, $Res Function(_$_StockModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? warehouse = null,
  }) {
    return _then(_$_StockModel(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountModel,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as WarehouseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockModel implements _StockModel {
  const _$_StockModel({required this.amount, required this.warehouse});

  factory _$_StockModel.fromJson(Map<String, dynamic> json) =>
      _$$_StockModelFromJson(json);

  @override
  final AmountModel amount;
  @override
  final WarehouseModel warehouse;

  @override
  String toString() {
    return 'StockModel(amount: $amount, warehouse: $warehouse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockModel &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, warehouse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockModelCopyWith<_$_StockModel> get copyWith =>
      __$$_StockModelCopyWithImpl<_$_StockModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StockModelToJson(
      this,
    );
  }
}

abstract class _StockModel implements StockModel {
  const factory _StockModel(
      {required final AmountModel amount,
      required final WarehouseModel warehouse}) = _$_StockModel;

  factory _StockModel.fromJson(Map<String, dynamic> json) =
      _$_StockModel.fromJson;

  @override
  AmountModel get amount;
  @override
  WarehouseModel get warehouse;
  @override
  @JsonKey(ignore: true)
  _$$_StockModelCopyWith<_$_StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}
