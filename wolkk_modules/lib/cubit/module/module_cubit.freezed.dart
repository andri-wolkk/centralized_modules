// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'module_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModuleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) failure,
    required TResult Function(List<ModuleModel> modules) fetched,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? failure,
    TResult? Function(List<ModuleModel> modules)? fetched,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? failure,
    TResult Function(List<ModuleModel> modules)? fetched,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleStateCopyWith<$Res> {
  factory $ModuleStateCopyWith(
          ModuleState value, $Res Function(ModuleState) then) =
      _$ModuleStateCopyWithImpl<$Res, ModuleState>;
}

/// @nodoc
class _$ModuleStateCopyWithImpl<$Res, $Val extends ModuleState>
    implements $ModuleStateCopyWith<$Res> {
  _$ModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Failure>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$Failure(
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

class _$Failure implements Failure {
  const _$Failure({required this.code, required this.message});

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ModuleState.failure(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) failure,
    required TResult Function(List<ModuleModel> modules) fetched,
    required TResult Function() initial,
  }) {
    return failure(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? failure,
    TResult? Function(List<ModuleModel> modules)? fetched,
    TResult? Function()? initial,
  }) {
    return failure?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? failure,
    TResult Function(List<ModuleModel> modules)? fetched,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
    required TResult Function(Initial value) initial,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
    TResult? Function(Initial value)? initial,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements ModuleState {
  const factory Failure(
      {required final String code, required final String message}) = _$Failure;

  String get code;
  String get message;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedCopyWith<$Res> {
  factory _$$FetchedCopyWith(_$Fetched value, $Res Function(_$Fetched) then) =
      __$$FetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ModuleModel> modules});
}

/// @nodoc
class __$$FetchedCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Fetched>
    implements _$$FetchedCopyWith<$Res> {
  __$$FetchedCopyWithImpl(_$Fetched _value, $Res Function(_$Fetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modules = null,
  }) {
    return _then(_$Fetched(
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<ModuleModel>,
    ));
  }
}

/// @nodoc

class _$Fetched implements Fetched {
  const _$Fetched({required final List<ModuleModel> modules})
      : _modules = modules;

  final List<ModuleModel> _modules;
  @override
  List<ModuleModel> get modules {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'ModuleState.fetched(modules: $modules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetched &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedCopyWith<_$Fetched> get copyWith =>
      __$$FetchedCopyWithImpl<_$Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) failure,
    required TResult Function(List<ModuleModel> modules) fetched,
    required TResult Function() initial,
  }) {
    return fetched(modules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? failure,
    TResult? Function(List<ModuleModel> modules)? fetched,
    TResult? Function()? initial,
  }) {
    return fetched?.call(modules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? failure,
    TResult Function(List<ModuleModel> modules)? fetched,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(modules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
    required TResult Function(Initial value) initial,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
    TResult? Function(Initial value)? initial,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements ModuleState {
  const factory Fetched({required final List<ModuleModel> modules}) = _$Fetched;

  List<ModuleModel> get modules;
  @JsonKey(ignore: true)
  _$$FetchedCopyWith<_$Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ModuleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message) failure,
    required TResult Function(List<ModuleModel> modules) fetched,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message)? failure,
    TResult? Function(List<ModuleModel> modules)? fetched,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message)? failure,
    TResult Function(List<ModuleModel> modules)? fetched,
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
    required TResult Function(Failure value) failure,
    required TResult Function(Fetched value) fetched,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Failure value)? failure,
    TResult? Function(Fetched value)? fetched,
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Failure value)? failure,
    TResult Function(Fetched value)? fetched,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ModuleState {
  const factory Initial() = _$Initial;
}
