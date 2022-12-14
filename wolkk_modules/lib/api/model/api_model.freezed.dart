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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)
        $default, {
    required TResult Function(String id) fetch,
    required TResult Function(String id) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Options options, String path, Source source, String url)?
        $default, {
    TResult? Function(String id)? fetch,
    TResult? Function(String id)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)?
        $default, {
    TResult Function(String id)? fetch,
    TResult Function(String id)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiModel value) $default, {
    required TResult Function(Fetch value) fetch,
    required TResult Function(Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiModel value)? $default, {
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiModel value)? $default, {
    TResult Function(Fetch value)? fetch,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiModelCopyWith<$Res> {
  factory $ApiModelCopyWith(ApiModel value, $Res Function(ApiModel) then) =
      _$ApiModelCopyWithImpl<$Res, ApiModel>;
}

/// @nodoc
class _$ApiModelCopyWithImpl<$Res, $Val extends ApiModel>
    implements $ApiModelCopyWith<$Res> {
  _$ApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApiModelCopyWith<$Res> {
  factory _$$_ApiModelCopyWith(
          _$_ApiModel value, $Res Function(_$_ApiModel) then) =
      __$$_ApiModelCopyWithImpl<$Res>;
  @useResult
  $Res call({Options options, String path, Source source, String url});
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
    Object? options = null,
    Object? path = null,
    Object? source = null,
    Object? url = null,
  }) {
    return _then(_$_ApiModel(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Options,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiModel implements _ApiModel {
  const _$_ApiModel(
      {required this.options,
      required this.path,
      required this.source,
      required this.url});

  @override
  final Options options;
  @override
  final String path;
  @override
  final Source source;
  @override
  final String url;

  @override
  String toString() {
    return 'ApiModel(options: $options, path: $path, source: $source, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiModel &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, options, path, source, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiModelCopyWith<_$_ApiModel> get copyWith =>
      __$$_ApiModelCopyWithImpl<_$_ApiModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)
        $default, {
    required TResult Function(String id) fetch,
    required TResult Function(String id) get,
  }) {
    return $default(options, path, source, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Options options, String path, Source source, String url)?
        $default, {
    TResult? Function(String id)? fetch,
    TResult? Function(String id)? get,
  }) {
    return $default?.call(options, path, source, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)?
        $default, {
    TResult Function(String id)? fetch,
    TResult Function(String id)? get,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(options, path, source, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiModel value) $default, {
    required TResult Function(Fetch value) fetch,
    required TResult Function(Get value) get,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiModel value)? $default, {
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Get value)? get,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiModel value)? $default, {
    TResult Function(Fetch value)? fetch,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ApiModel implements ApiModel {
  const factory _ApiModel(
      {required final Options options,
      required final String path,
      required final Source source,
      required final String url}) = _$_ApiModel;

  Options get options;
  String get path;
  Source get source;
  String get url;
  @JsonKey(ignore: true)
  _$$_ApiModelCopyWith<_$_ApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCopyWith<$Res> {
  factory _$$FetchCopyWith(_$Fetch value, $Res Function(_$Fetch) then) =
      __$$FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchCopyWithImpl<$Res> extends _$ApiModelCopyWithImpl<$Res, _$Fetch>
    implements _$$FetchCopyWith<$Res> {
  __$$FetchCopyWithImpl(_$Fetch _value, $Res Function(_$Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Fetch(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Fetch implements Fetch {
  const _$Fetch({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ApiModel.fetch(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCopyWith<_$Fetch> get copyWith =>
      __$$FetchCopyWithImpl<_$Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)
        $default, {
    required TResult Function(String id) fetch,
    required TResult Function(String id) get,
  }) {
    return fetch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Options options, String path, Source source, String url)?
        $default, {
    TResult? Function(String id)? fetch,
    TResult? Function(String id)? get,
  }) {
    return fetch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)?
        $default, {
    TResult Function(String id)? fetch,
    TResult Function(String id)? get,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiModel value) $default, {
    required TResult Function(Fetch value) fetch,
    required TResult Function(Get value) get,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiModel value)? $default, {
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Get value)? get,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiModel value)? $default, {
    TResult Function(Fetch value)? fetch,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements ApiModel {
  const factory Fetch({required final String id}) = _$Fetch;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchCopyWith<_$Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCopyWith<$Res> {
  factory _$$GetCopyWith(_$Get value, $Res Function(_$Get) then) =
      __$$GetCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetCopyWithImpl<$Res> extends _$ApiModelCopyWithImpl<$Res, _$Get>
    implements _$$GetCopyWith<$Res> {
  __$$GetCopyWithImpl(_$Get _value, $Res Function(_$Get) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Get(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Get implements Get {
  const _$Get({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ApiModel.get(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Get &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCopyWith<_$Get> get copyWith =>
      __$$GetCopyWithImpl<_$Get>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)
        $default, {
    required TResult Function(String id) fetch,
    required TResult Function(String id) get,
  }) {
    return get(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Options options, String path, Source source, String url)?
        $default, {
    TResult? Function(String id)? fetch,
    TResult? Function(String id)? get,
  }) {
    return get?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Options options, String path, Source source, String url)?
        $default, {
    TResult Function(String id)? fetch,
    TResult Function(String id)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ApiModel value) $default, {
    required TResult Function(Fetch value) fetch,
    required TResult Function(Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ApiModel value)? $default, {
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ApiModel value)? $default, {
    TResult Function(Fetch value)? fetch,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class Get implements ApiModel {
  const factory Get({required final String id}) = _$Get;

  String get id;
  @JsonKey(ignore: true)
  _$$GetCopyWith<_$Get> get copyWith => throw _privateConstructorUsedError;
}
