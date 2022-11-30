// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'core_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoreFailure _$CoreFailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'localFailure':
      return LocalFailure.fromJson(json);
    case 'serverFailure':
      return ServerFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CoreFailure',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CoreFailure {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) localFailure,
    required TResult Function(String code, String message, int statusCode)
        serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? localFailure,
    TResult? Function(String code, String message, int statusCode)?
        serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? localFailure,
    TResult Function(String code, String message, int statusCode)?
        serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoreFailureCopyWith<CoreFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreFailureCopyWith<$Res> {
  factory $CoreFailureCopyWith(
          CoreFailure value, $Res Function(CoreFailure) then) =
      _$CoreFailureCopyWithImpl<$Res, CoreFailure>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$CoreFailureCopyWithImpl<$Res, $Val extends CoreFailure>
    implements $CoreFailureCopyWith<$Res> {
  _$CoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalFailureCopyWith<$Res>
    implements $CoreFailureCopyWith<$Res> {
  factory _$$LocalFailureCopyWith(
          _$LocalFailure value, $Res Function(_$LocalFailure) then) =
      __$$LocalFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$LocalFailureCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$LocalFailure>
    implements _$$LocalFailureCopyWith<$Res> {
  __$$LocalFailureCopyWithImpl(
      _$LocalFailure _value, $Res Function(_$LocalFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$LocalFailure(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalFailure implements LocalFailure {
  const _$LocalFailure(
      {required this.code, required this.message, final String? $type})
      : $type = $type ?? 'localFailure';

  factory _$LocalFailure.fromJson(Map<String, dynamic> json) =>
      _$$LocalFailureFromJson(json);

  @override
  final String code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreFailure.localFailure(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalFailure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalFailureCopyWith<_$LocalFailure> get copyWith =>
      __$$LocalFailureCopyWithImpl<_$LocalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) localFailure,
    required TResult Function(String code, String message, int statusCode)
        serverFailure,
  }) {
    return localFailure(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? localFailure,
    TResult? Function(String code, String message, int statusCode)?
        serverFailure,
  }) {
    return localFailure?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? localFailure,
    TResult Function(String code, String message, int statusCode)?
        serverFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return localFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
  }) {
    return localFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (localFailure != null) {
      return localFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalFailureToJson(
      this,
    );
  }
}

abstract class LocalFailure implements CoreFailure {
  const factory LocalFailure(
      {required final String code,
      required final String message}) = _$LocalFailure;

  factory LocalFailure.fromJson(Map<String, dynamic> json) =
      _$LocalFailure.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$LocalFailureCopyWith<_$LocalFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res>
    implements $CoreFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message, int statusCode});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$CoreFailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$ServerFailure(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFailure implements ServerFailure {
  const _$ServerFailure(
      {required this.code,
      required this.message,
      required this.statusCode,
      final String? $type})
      : $type = $type ?? 'serverFailure';

  factory _$ServerFailure.fromJson(Map<String, dynamic> json) =>
      _$$ServerFailureFromJson(json);

  @override
  final String code;
  @override
  final String message;
  @override
  final int statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CoreFailure.serverFailure(code: $code, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) localFailure,
    required TResult Function(String code, String message, int statusCode)
        serverFailure,
  }) {
    return serverFailure(code, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? localFailure,
    TResult? Function(String code, String message, int statusCode)?
        serverFailure,
  }) {
    return serverFailure?.call(code, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? localFailure,
    TResult Function(String code, String message, int statusCode)?
        serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(code, message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalFailure value) localFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalFailure value)? localFailure,
    TResult? Function(ServerFailure value)? serverFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalFailure value)? localFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFailureToJson(
      this,
    );
  }
}

abstract class ServerFailure implements CoreFailure {
  const factory ServerFailure(
      {required final String code,
      required final String message,
      required final int statusCode}) = _$ServerFailure;

  factory ServerFailure.fromJson(Map<String, dynamic> json) =
      _$ServerFailure.fromJson;

  @override
  String get code;
  @override
  String get message;
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
