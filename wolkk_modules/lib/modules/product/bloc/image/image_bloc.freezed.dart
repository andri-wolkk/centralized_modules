// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageEventCopyWith<ImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageLoadEventCopyWith<$Res>
    implements $ImageEventCopyWith<$Res> {
  factory _$$ImageLoadEventCopyWith(
          _$ImageLoadEvent value, $Res Function(_$ImageLoadEvent) then) =
      __$$ImageLoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ImageLoadEventCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$ImageLoadEvent>
    implements _$$ImageLoadEventCopyWith<$Res> {
  __$$ImageLoadEventCopyWithImpl(
      _$ImageLoadEvent _value, $Res Function(_$ImageLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ImageLoadEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageLoadEvent implements ImageLoadEvent {
  const _$ImageLoadEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ImageEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLoadEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLoadEventCopyWith<_$ImageLoadEvent> get copyWith =>
      __$$ImageLoadEventCopyWithImpl<_$ImageLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? load,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ImageLoadEvent implements ImageEvent {
  const factory ImageLoadEvent({required final String id}) = _$ImageLoadEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ImageLoadEventCopyWith<_$ImageLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function() initial,
    required TResult Function(String image) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function()? initial,
    TResult? Function(String image)? loaded,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function()? initial,
    TResult Function(String image)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageFailureState value) failure,
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadedState value) loaded,
    required TResult Function(ImageLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageFailureState value)? failure,
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadedState value)? loaded,
    TResult? Function(ImageLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageFailureState value)? failure,
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadedState value)? loaded,
    TResult Function(ImageLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageFailureStateCopyWith<$Res> {
  factory _$$ImageFailureStateCopyWith(
          _$ImageFailureState value, $Res Function(_$ImageFailureState) then) =
      __$$ImageFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String message, String? statusCode});
}

/// @nodoc
class __$$ImageFailureStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageFailureState>
    implements _$$ImageFailureStateCopyWith<$Res> {
  __$$ImageFailureStateCopyWithImpl(
      _$ImageFailureState _value, $Res Function(_$ImageFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ImageFailureState(
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

class _$ImageFailureState implements ImageFailureState {
  const _$ImageFailureState(
      {required this.code, required this.message, this.statusCode});

  @override
  final String code;
  @override
  final String message;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'ImageState.failure(code: $code, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFailureState &&
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
  _$$ImageFailureStateCopyWith<_$ImageFailureState> get copyWith =>
      __$$ImageFailureStateCopyWithImpl<_$ImageFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function() initial,
    required TResult Function(String image) loaded,
    required TResult Function() loading,
  }) {
    return failure(code, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function()? initial,
    TResult? Function(String image)? loaded,
    TResult? Function()? loading,
  }) {
    return failure?.call(code, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function()? initial,
    TResult Function(String image)? loaded,
    TResult Function()? loading,
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
    required TResult Function(ImageFailureState value) failure,
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadedState value) loaded,
    required TResult Function(ImageLoadingState value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageFailureState value)? failure,
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadedState value)? loaded,
    TResult? Function(ImageLoadingState value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageFailureState value)? failure,
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadedState value)? loaded,
    TResult Function(ImageLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ImageFailureState implements ImageState {
  const factory ImageFailureState(
      {required final String code,
      required final String message,
      final String? statusCode}) = _$ImageFailureState;

  String get code;
  String get message;
  String? get statusCode;
  @JsonKey(ignore: true)
  _$$ImageFailureStateCopyWith<_$ImageFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageInitialStateCopyWith<$Res> {
  factory _$$ImageInitialStateCopyWith(
          _$ImageInitialState value, $Res Function(_$ImageInitialState) then) =
      __$$ImageInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageInitialStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageInitialState>
    implements _$$ImageInitialStateCopyWith<$Res> {
  __$$ImageInitialStateCopyWithImpl(
      _$ImageInitialState _value, $Res Function(_$ImageInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImageInitialState implements ImageInitialState {
  const _$ImageInitialState();

  @override
  String toString() {
    return 'ImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function() initial,
    required TResult Function(String image) loaded,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function()? initial,
    TResult? Function(String image)? loaded,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function()? initial,
    TResult Function(String image)? loaded,
    TResult Function()? loading,
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
    required TResult Function(ImageFailureState value) failure,
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadedState value) loaded,
    required TResult Function(ImageLoadingState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageFailureState value)? failure,
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadedState value)? loaded,
    TResult? Function(ImageLoadingState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageFailureState value)? failure,
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadedState value)? loaded,
    TResult Function(ImageLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ImageInitialState implements ImageState {
  const factory ImageInitialState() = _$ImageInitialState;
}

/// @nodoc
abstract class _$$ImageLoadedStateCopyWith<$Res> {
  factory _$$ImageLoadedStateCopyWith(
          _$ImageLoadedState value, $Res Function(_$ImageLoadedState) then) =
      __$$ImageLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$ImageLoadedStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageLoadedState>
    implements _$$ImageLoadedStateCopyWith<$Res> {
  __$$ImageLoadedStateCopyWithImpl(
      _$ImageLoadedState _value, $Res Function(_$ImageLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageLoadedState(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageLoadedState implements ImageLoadedState {
  const _$ImageLoadedState({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'ImageState.loaded(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLoadedState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLoadedStateCopyWith<_$ImageLoadedState> get copyWith =>
      __$$ImageLoadedStateCopyWithImpl<_$ImageLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function() initial,
    required TResult Function(String image) loaded,
    required TResult Function() loading,
  }) {
    return loaded(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function()? initial,
    TResult? Function(String image)? loaded,
    TResult? Function()? loading,
  }) {
    return loaded?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function()? initial,
    TResult Function(String image)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageFailureState value) failure,
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadedState value) loaded,
    required TResult Function(ImageLoadingState value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageFailureState value)? failure,
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadedState value)? loaded,
    TResult? Function(ImageLoadingState value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageFailureState value)? failure,
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadedState value)? loaded,
    TResult Function(ImageLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ImageLoadedState implements ImageState {
  const factory ImageLoadedState({required final String image}) =
      _$ImageLoadedState;

  String get image;
  @JsonKey(ignore: true)
  _$$ImageLoadedStateCopyWith<_$ImageLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageLoadingStateCopyWith<$Res> {
  factory _$$ImageLoadingStateCopyWith(
          _$ImageLoadingState value, $Res Function(_$ImageLoadingState) then) =
      __$$ImageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageLoadingStateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageLoadingState>
    implements _$$ImageLoadingStateCopyWith<$Res> {
  __$$ImageLoadingStateCopyWithImpl(
      _$ImageLoadingState _value, $Res Function(_$ImageLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ImageLoadingState implements ImageLoadingState {
  const _$ImageLoadingState();

  @override
  String toString() {
    return 'ImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ImageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String message, String? statusCode)
        failure,
    required TResult Function() initial,
    required TResult Function(String image) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String message, String? statusCode)? failure,
    TResult? Function()? initial,
    TResult? Function(String image)? loaded,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String message, String? statusCode)? failure,
    TResult Function()? initial,
    TResult Function(String image)? loaded,
    TResult Function()? loading,
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
    required TResult Function(ImageFailureState value) failure,
    required TResult Function(ImageInitialState value) initial,
    required TResult Function(ImageLoadedState value) loaded,
    required TResult Function(ImageLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageFailureState value)? failure,
    TResult? Function(ImageInitialState value)? initial,
    TResult? Function(ImageLoadedState value)? loaded,
    TResult? Function(ImageLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageFailureState value)? failure,
    TResult Function(ImageInitialState value)? initial,
    TResult Function(ImageLoadedState value)? loaded,
    TResult Function(ImageLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImageLoadingState implements ImageState {
  const factory ImageLoadingState() = _$ImageLoadingState;
}
