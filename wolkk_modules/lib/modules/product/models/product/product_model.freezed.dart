// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  List<DescriptionModel>? get description => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<PriceModel>? get prices => throw _privateConstructorUsedError;
  List<StockModel>? get stocks => throw _privateConstructorUsedError;
  List<TagModel>? get tags => throw _privateConstructorUsedError;
  bool? get trackInventory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {List<DescriptionModel>? description,
      String id,
      ImageModel? image,
      double? maxPrice,
      double? minPrice,
      String name,
      List<PriceModel>? prices,
      List<StockModel>? stocks,
      List<TagModel>? tags,
      bool? trackInventory});

  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = null,
    Object? image = freezed,
    Object? maxPrice = freezed,
    Object? minPrice = freezed,
    Object? name = null,
    Object? prices = freezed,
    Object? stocks = freezed,
    Object? tags = freezed,
    Object? trackInventory = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<DescriptionModel>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceModel>?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
      trackInventory: freezed == trackInventory
          ? _value.trackInventory
          : trackInventory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DescriptionModel>? description,
      String id,
      ImageModel? image,
      double? maxPrice,
      double? minPrice,
      String name,
      List<PriceModel>? prices,
      List<StockModel>? stocks,
      List<TagModel>? tags,
      bool? trackInventory});

  @override
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = null,
    Object? image = freezed,
    Object? maxPrice = freezed,
    Object? minPrice = freezed,
    Object? name = null,
    Object? prices = freezed,
    Object? stocks = freezed,
    Object? tags = freezed,
    Object? trackInventory = freezed,
  }) {
    return _then(_$_ProductModel(
      description: freezed == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<DescriptionModel>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prices: freezed == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceModel>?,
      stocks: freezed == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockModel>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
      trackInventory: freezed == trackInventory
          ? _value.trackInventory
          : trackInventory // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {final List<DescriptionModel>? description = const [],
      required this.id,
      this.image,
      this.maxPrice = 0,
      this.minPrice = 0,
      required this.name,
      final List<PriceModel>? prices = const [],
      final List<StockModel>? stocks = const [],
      final List<TagModel>? tags = const [],
      this.trackInventory = true})
      : _description = description,
        _prices = prices,
        _stocks = stocks,
        _tags = tags;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  final List<DescriptionModel>? _description;
  @override
  @JsonKey()
  List<DescriptionModel>? get description {
    final value = _description;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String id;
  @override
  final ImageModel? image;
  @override
  @JsonKey()
  final double? maxPrice;
  @override
  @JsonKey()
  final double? minPrice;
  @override
  final String name;
  final List<PriceModel>? _prices;
  @override
  @JsonKey()
  List<PriceModel>? get prices {
    final value = _prices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<StockModel>? _stocks;
  @override
  @JsonKey()
  List<StockModel>? get stocks {
    final value = _stocks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagModel>? _tags;
  @override
  @JsonKey()
  List<TagModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? trackInventory;

  @override
  String toString() {
    return 'ProductModel(description: $description, id: $id, image: $image, maxPrice: $maxPrice, minPrice: $minPrice, name: $name, prices: $prices, stocks: $stocks, tags: $tags, trackInventory: $trackInventory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality().equals(other._stocks, _stocks) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.trackInventory, trackInventory) ||
                other.trackInventory == trackInventory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_description),
      id,
      image,
      maxPrice,
      minPrice,
      name,
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_stocks),
      const DeepCollectionEquality().hash(_tags),
      trackInventory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final List<DescriptionModel>? description,
      required final String id,
      final ImageModel? image,
      final double? maxPrice,
      final double? minPrice,
      required final String name,
      final List<PriceModel>? prices,
      final List<StockModel>? stocks,
      final List<TagModel>? tags,
      final bool? trackInventory}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  List<DescriptionModel>? get description;
  @override
  String get id;
  @override
  ImageModel? get image;
  @override
  double? get maxPrice;
  @override
  double? get minPrice;
  @override
  String get name;
  @override
  List<PriceModel>? get prices;
  @override
  List<StockModel>? get stocks;
  @override
  List<TagModel>? get tags;
  @override
  bool? get trackInventory;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
