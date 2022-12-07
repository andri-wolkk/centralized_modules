// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, Options? options, String path) fetch,
    required TResult Function(String keywords) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, Options? options, String path)? fetch,
    TResult? Function(String keywords)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, Options? options, String path)? fetch,
    TResult Function(String keywords)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProductEvent value) fetch,
    required TResult Function(SearchProductEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProductEvent value)? fetch,
    TResult? Function(SearchProductEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProductEvent value)? fetch,
    TResult Function(SearchProductEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProductEventCopyWith<$Res> {
  factory _$$FetchProductEventCopyWith(
          _$FetchProductEvent value, $Res Function(_$FetchProductEvent) then) =
      __$$FetchProductEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, Options? options, String path});
}

/// @nodoc
class __$$FetchProductEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchProductEvent>
    implements _$$FetchProductEventCopyWith<$Res> {
  __$$FetchProductEventCopyWithImpl(
      _$FetchProductEvent _value, $Res Function(_$FetchProductEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? options = freezed,
    Object? path = null,
  }) {
    return _then(_$FetchProductEvent(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Options?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductEvent implements FetchProductEvent {
  const _$FetchProductEvent(
      {required this.key, this.options, required this.path});

  @override
  final String key;
  @override
  final Options? options;
  @override
  final String path;

  @override
  String toString() {
    return 'ProductEvent.fetch(key: $key, options: $options, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductEvent &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, options, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductEventCopyWith<_$FetchProductEvent> get copyWith =>
      __$$FetchProductEventCopyWithImpl<_$FetchProductEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, Options? options, String path) fetch,
    required TResult Function(String keywords) search,
  }) {
    return fetch(key, options, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, Options? options, String path)? fetch,
    TResult? Function(String keywords)? search,
  }) {
    return fetch?.call(key, options, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, Options? options, String path)? fetch,
    TResult Function(String keywords)? search,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(key, options, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProductEvent value) fetch,
    required TResult Function(SearchProductEvent value) search,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProductEvent value)? fetch,
    TResult? Function(SearchProductEvent value)? search,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProductEvent value)? fetch,
    TResult Function(SearchProductEvent value)? search,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchProductEvent implements ProductEvent {
  const factory FetchProductEvent(
      {required final String key,
      final Options? options,
      required final String path}) = _$FetchProductEvent;

  String get key;
  Options? get options;
  String get path;
  @JsonKey(ignore: true)
  _$$FetchProductEventCopyWith<_$FetchProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductEventCopyWith<$Res> {
  factory _$$SearchProductEventCopyWith(_$SearchProductEvent value,
          $Res Function(_$SearchProductEvent) then) =
      __$$SearchProductEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String keywords});
}

/// @nodoc
class __$$SearchProductEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchProductEvent>
    implements _$$SearchProductEventCopyWith<$Res> {
  __$$SearchProductEventCopyWithImpl(
      _$SearchProductEvent _value, $Res Function(_$SearchProductEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keywords = null,
  }) {
    return _then(_$SearchProductEvent(
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductEvent implements SearchProductEvent {
  const _$SearchProductEvent({required this.keywords});

  @override
  final String keywords;

  @override
  String toString() {
    return 'ProductEvent.search(keywords: $keywords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductEvent &&
            (identical(other.keywords, keywords) ||
                other.keywords == keywords));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keywords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductEventCopyWith<_$SearchProductEvent> get copyWith =>
      __$$SearchProductEventCopyWithImpl<_$SearchProductEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String key, Options? options, String path) fetch,
    required TResult Function(String keywords) search,
  }) {
    return search(keywords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String key, Options? options, String path)? fetch,
    TResult? Function(String keywords)? search,
  }) {
    return search?.call(keywords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, Options? options, String path)? fetch,
    TResult Function(String keywords)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(keywords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchProductEvent value) fetch,
    required TResult Function(SearchProductEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchProductEvent value)? fetch,
    TResult? Function(SearchProductEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchProductEvent value)? fetch,
    TResult Function(SearchProductEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchProductEvent implements ProductEvent {
  const factory SearchProductEvent({required final String keywords}) =
      _$SearchProductEvent;

  String get keywords;
  @JsonKey(ignore: true)
  _$$SearchProductEventCopyWith<_$SearchProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function(List<ProductModel> products) fetched,
    required TResult Function(ProductModel product) loaded,
    required TResult Function() loading,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function(List<ProductModel> products)? fetched,
    TResult? Function(ProductModel product)? loaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function(List<ProductModel> products)? fetched,
    TResult Function(ProductModel product)? loaded,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFailureState value) failure,
    required TResult Function(ProductFetchedState value) fetched,
    required TResult Function(ProductLoadedState value) loaded,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFailureState value)? failure,
    TResult? Function(ProductFetchedState value)? fetched,
    TResult? Function(ProductLoadedState value)? loaded,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFailureState value)? failure,
    TResult Function(ProductFetchedState value)? fetched,
    TResult Function(ProductLoadedState value)? loaded,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductFailureStateCopyWith<$Res> {
  factory _$$ProductFailureStateCopyWith(_$ProductFailureState value,
          $Res Function(_$ProductFailureState) then) =
      __$$ProductFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String message, String? statusCode});
}

/// @nodoc
class __$$ProductFailureStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductFailureState>
    implements _$$ProductFailureStateCopyWith<$Res> {
  __$$ProductFailureStateCopyWithImpl(
      _$ProductFailureState _value, $Res Function(_$ProductFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ProductFailureState(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductFailureState implements ProductFailureState {
  const _$ProductFailureState(
      {required this.code, required this.message, this.statusCode});

  @override
  final String code;
  @override
  final String message;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'ProductState.failure(code: $code, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFailureState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFailureStateCopyWith<_$ProductFailureState> get copyWith =>
      __$$ProductFailureStateCopyWithImpl<_$ProductFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function(List<ProductModel> products) fetched,
    required TResult Function(ProductModel product) loaded,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return failure(code, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function(List<ProductModel> products)? fetched,
    TResult? Function(ProductModel product)? loaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return failure?.call(code, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function(List<ProductModel> products)? fetched,
    TResult Function(ProductModel product)? loaded,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(code, message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFailureState value) failure,
    required TResult Function(ProductFetchedState value) fetched,
    required TResult Function(ProductLoadedState value) loaded,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductInitialState value) initial,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFailureState value)? failure,
    TResult? Function(ProductFetchedState value)? fetched,
    TResult? Function(ProductLoadedState value)? loaded,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductInitialState value)? initial,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFailureState value)? failure,
    TResult Function(ProductFetchedState value)? fetched,
    TResult Function(ProductLoadedState value)? loaded,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProductFailureState implements ProductState {
  const factory ProductFailureState(
      {required final String code,
      required final String message,
      final String? statusCode}) = _$ProductFailureState;

  String get code;
  String get message;
  String? get statusCode;
  @JsonKey(ignore: true)
  _$$ProductFailureStateCopyWith<_$ProductFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductFetchedStateCopyWith<$Res> {
  factory _$$ProductFetchedStateCopyWith(_$ProductFetchedState value,
          $Res Function(_$ProductFetchedState) then) =
      __$$ProductFetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class __$$ProductFetchedStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductFetchedState>
    implements _$$ProductFetchedStateCopyWith<$Res> {
  __$$ProductFetchedStateCopyWithImpl(
      _$ProductFetchedState _value, $Res Function(_$ProductFetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductFetchedState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ProductFetchedState implements ProductFetchedState {
  const _$ProductFetchedState({required final List<ProductModel> products})
      : _products = products;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductState.fetched(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFetchedState &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFetchedStateCopyWith<_$ProductFetchedState> get copyWith =>
      __$$ProductFetchedStateCopyWithImpl<_$ProductFetchedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function(List<ProductModel> products) fetched,
    required TResult Function(ProductModel product) loaded,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return fetched(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function(List<ProductModel> products)? fetched,
    TResult? Function(ProductModel product)? loaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return fetched?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function(List<ProductModel> products)? fetched,
    TResult Function(ProductModel product)? loaded,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFailureState value) failure,
    required TResult Function(ProductFetchedState value) fetched,
    required TResult Function(ProductLoadedState value) loaded,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductInitialState value) initial,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFailureState value)? failure,
    TResult? Function(ProductFetchedState value)? fetched,
    TResult? Function(ProductLoadedState value)? loaded,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductInitialState value)? initial,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFailureState value)? failure,
    TResult Function(ProductFetchedState value)? fetched,
    TResult Function(ProductLoadedState value)? loaded,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class ProductFetchedState implements ProductState {
  const factory ProductFetchedState(
      {required final List<ProductModel> products}) = _$ProductFetchedState;

  List<ProductModel> get products;
  @JsonKey(ignore: true)
  _$$ProductFetchedStateCopyWith<_$ProductFetchedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductLoadedStateCopyWith<$Res> {
  factory _$$ProductLoadedStateCopyWith(_$ProductLoadedState value,
          $Res Function(_$ProductLoadedState) then) =
      __$$ProductLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductLoadedStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadedState>
    implements _$$ProductLoadedStateCopyWith<$Res> {
  __$$ProductLoadedStateCopyWithImpl(
      _$ProductLoadedState _value, $Res Function(_$ProductLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductLoadedState(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductLoadedState implements ProductLoadedState {
  const _$ProductLoadedState({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductState.loaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedState &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedStateCopyWith<_$ProductLoadedState> get copyWith =>
      __$$ProductLoadedStateCopyWithImpl<_$ProductLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function(List<ProductModel> products) fetched,
    required TResult Function(ProductModel product) loaded,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function(List<ProductModel> products)? fetched,
    TResult? Function(ProductModel product)? loaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return loaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function(List<ProductModel> products)? fetched,
    TResult Function(ProductModel product)? loaded,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFailureState value) failure,
    required TResult Function(ProductFetchedState value) fetched,
    required TResult Function(ProductLoadedState value) loaded,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductInitialState value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFailureState value)? failure,
    TResult? Function(ProductFetchedState value)? fetched,
    TResult? Function(ProductLoadedState value)? loaded,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductInitialState value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFailureState value)? failure,
    TResult Function(ProductFetchedState value)? fetched,
    TResult Function(ProductLoadedState value)? loaded,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductLoadedState implements ProductState {
  const factory ProductLoadedState({required final ProductModel product}) =
      _$ProductLoadedState;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$ProductLoadedStateCopyWith<_$ProductLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductLoadingStateCopyWith<$Res> {
  factory _$$ProductLoadingStateCopyWith(_$ProductLoadingState value,
          $Res Function(_$ProductLoadingState) then) =
      __$$ProductLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadingState>
    implements _$$ProductLoadingStateCopyWith<$Res> {
  __$$ProductLoadingStateCopyWithImpl(
      _$ProductLoadingState _value, $Res Function(_$ProductLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoadingState implements ProductLoadingState {
  const _$ProductLoadingState();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function(List<ProductModel> products) fetched,
    required TResult Function(ProductModel product) loaded,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function(List<ProductModel> products)? fetched,
    TResult? Function(ProductModel product)? loaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function(List<ProductModel> products)? fetched,
    TResult Function(ProductModel product)? loaded,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFailureState value) failure,
    required TResult Function(ProductFetchedState value) fetched,
    required TResult Function(ProductLoadedState value) loaded,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductInitialState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFailureState value)? failure,
    TResult? Function(ProductFetchedState value)? fetched,
    TResult? Function(ProductLoadedState value)? loaded,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductInitialState value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFailureState value)? failure,
    TResult Function(ProductFetchedState value)? fetched,
    TResult Function(ProductLoadedState value)? loaded,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoadingState implements ProductState {
  const factory ProductLoadingState() = _$ProductLoadingState;
}

/// @nodoc
abstract class _$$ProductInitialStateCopyWith<$Res> {
  factory _$$ProductInitialStateCopyWith(_$ProductInitialState value,
          $Res Function(_$ProductInitialState) then) =
      __$$ProductInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductInitialState>
    implements _$$ProductInitialStateCopyWith<$Res> {
  __$$ProductInitialStateCopyWithImpl(
      _$ProductInitialState _value, $Res Function(_$ProductInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitialState implements ProductInitialState {
  const _$ProductInitialState();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function(List<ProductModel> products) fetched,
    required TResult Function(ProductModel product) loaded,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function(List<ProductModel> products)? fetched,
    TResult? Function(ProductModel product)? loaded,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function(List<ProductModel> products)? fetched,
    TResult Function(ProductModel product)? loaded,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFailureState value) failure,
    required TResult Function(ProductFetchedState value) fetched,
    required TResult Function(ProductLoadedState value) loaded,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFailureState value)? failure,
    TResult? Function(ProductFetchedState value)? fetched,
    TResult? Function(ProductLoadedState value)? loaded,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFailureState value)? failure,
    TResult Function(ProductFetchedState value)? fetched,
    TResult Function(ProductLoadedState value)? loaded,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductInitialState implements ProductState {
  const factory ProductInitialState() = _$ProductInitialState;
}
