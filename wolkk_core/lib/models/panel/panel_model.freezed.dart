// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'panel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PanelModel {
  Widget get header => throw _privateConstructorUsedError;
  Widget get main => throw _privateConstructorUsedError;
  Widget get navigation => throw _privateConstructorUsedError;
  Widget get secondary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PanelModelCopyWith<PanelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelModelCopyWith<$Res> {
  factory $PanelModelCopyWith(
          PanelModel value, $Res Function(PanelModel) then) =
      _$PanelModelCopyWithImpl<$Res, PanelModel>;
  @useResult
  $Res call({Widget header, Widget main, Widget navigation, Widget secondary});
}

/// @nodoc
class _$PanelModelCopyWithImpl<$Res, $Val extends PanelModel>
    implements $PanelModelCopyWith<$Res> {
  _$PanelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? main = null,
    Object? navigation = null,
    Object? secondary = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Widget,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Widget,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as Widget,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PanelModelCopyWith<$Res>
    implements $PanelModelCopyWith<$Res> {
  factory _$$_PanelModelCopyWith(
          _$_PanelModel value, $Res Function(_$_PanelModel) then) =
      __$$_PanelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget header, Widget main, Widget navigation, Widget secondary});
}

/// @nodoc
class __$$_PanelModelCopyWithImpl<$Res>
    extends _$PanelModelCopyWithImpl<$Res, _$_PanelModel>
    implements _$$_PanelModelCopyWith<$Res> {
  __$$_PanelModelCopyWithImpl(
      _$_PanelModel _value, $Res Function(_$_PanelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? main = null,
    Object? navigation = null,
    Object? secondary = null,
  }) {
    return _then(_$_PanelModel(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Widget,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Widget,
      navigation: null == navigation
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as Widget,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_PanelModel implements _PanelModel {
  const _$_PanelModel(
      {required this.header,
      required this.main,
      required this.navigation,
      this.secondary = const SizedBox.shrink()});

  @override
  final Widget header;
  @override
  final Widget main;
  @override
  final Widget navigation;
  @override
  @JsonKey()
  final Widget secondary;

  @override
  String toString() {
    return 'PanelModel(header: $header, main: $main, navigation: $navigation, secondary: $secondary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PanelModel &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.navigation, navigation) ||
                other.navigation == navigation) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, header, main, navigation, secondary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PanelModelCopyWith<_$_PanelModel> get copyWith =>
      __$$_PanelModelCopyWithImpl<_$_PanelModel>(this, _$identity);
}

abstract class _PanelModel implements PanelModel {
  const factory _PanelModel(
      {required final Widget header,
      required final Widget main,
      required final Widget navigation,
      final Widget secondary}) = _$_PanelModel;

  @override
  Widget get header;
  @override
  Widget get main;
  @override
  Widget get navigation;
  @override
  Widget get secondary;
  @override
  @JsonKey(ignore: true)
  _$$_PanelModelCopyWith<_$_PanelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
