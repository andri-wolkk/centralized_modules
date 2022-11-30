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
  String get id => throw _privateConstructorUsedError;
  double get stock => throw _privateConstructorUsedError;
  StoreModel get store => throw _privateConstructorUsedError;

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
  $Res call({String id, double stock, StoreModel store});

  $StoreModelCopyWith<$Res> get store;
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
    Object? id = null,
    Object? stock = null,
    Object? store = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as double,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreModelCopyWith<$Res> get store {
    return $StoreModelCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value) as $Val);
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
  $Res call({String id, double stock, StoreModel store});

  @override
  $StoreModelCopyWith<$Res> get store;
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
    Object? id = null,
    Object? stock = null,
    Object? store = null,
  }) {
    return _then(_$_StockModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as double,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockModel implements _StockModel {
  const _$_StockModel(
      {required this.id, required this.stock, required this.store});

  factory _$_StockModel.fromJson(Map<String, dynamic> json) =>
      _$$_StockModelFromJson(json);

  @override
  final String id;
  @override
  final double stock;
  @override
  final StoreModel store;

  @override
  String toString() {
    return 'StockModel(id: $id, stock: $stock, store: $store)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, stock, store);

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
      {required final String id,
      required final double stock,
      required final StoreModel store}) = _$_StockModel;

  factory _StockModel.fromJson(Map<String, dynamic> json) =
      _$_StockModel.fromJson;

  @override
  String get id;
  @override
  double get stock;
  @override
  StoreModel get store;
  @override
  @JsonKey(ignore: true)
  _$$_StockModelCopyWith<_$_StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}
