// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'module_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModuleModel _$ModuleModelFromJson(Map<String, dynamic> json) {
  return _ModuleModel.fromJson(json);
}

/// @nodoc
mixin _$ModuleModel {
  String get icon => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Module get name => throw _privateConstructorUsedError;
  List<Operation> get operations => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleModelCopyWith<ModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleModelCopyWith<$Res> {
  factory $ModuleModelCopyWith(
          ModuleModel value, $Res Function(ModuleModel) then) =
      _$ModuleModelCopyWithImpl<$Res, ModuleModel>;
  @useResult
  $Res call(
      {String icon,
      String id,
      Module name,
      List<Operation> operations,
      String path});
}

/// @nodoc
class _$ModuleModelCopyWithImpl<$Res, $Val extends ModuleModel>
    implements $ModuleModelCopyWith<$Res> {
  _$ModuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? id = null,
    Object? name = null,
    Object? operations = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Module,
      operations: null == operations
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<Operation>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModuleModelCopyWith<$Res>
    implements $ModuleModelCopyWith<$Res> {
  factory _$$_ModuleModelCopyWith(
          _$_ModuleModel value, $Res Function(_$_ModuleModel) then) =
      __$$_ModuleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String icon,
      String id,
      Module name,
      List<Operation> operations,
      String path});
}

/// @nodoc
class __$$_ModuleModelCopyWithImpl<$Res>
    extends _$ModuleModelCopyWithImpl<$Res, _$_ModuleModel>
    implements _$$_ModuleModelCopyWith<$Res> {
  __$$_ModuleModelCopyWithImpl(
      _$_ModuleModel _value, $Res Function(_$_ModuleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? id = null,
    Object? name = null,
    Object? operations = null,
    Object? path = null,
  }) {
    return _then(_$_ModuleModel(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Module,
      operations: null == operations
          ? _value._operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<Operation>,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModuleModel implements _ModuleModel {
  const _$_ModuleModel(
      {required this.icon,
      required this.id,
      required this.name,
      required final List<Operation> operations,
      required this.path})
      : _operations = operations;

  factory _$_ModuleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ModuleModelFromJson(json);

  @override
  final String icon;
  @override
  final String id;
  @override
  final Module name;
  final List<Operation> _operations;
  @override
  List<Operation> get operations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operations);
  }

  @override
  final String path;

  @override
  String toString() {
    return 'ModuleModel(icon: $icon, id: $id, name: $name, operations: $operations, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModuleModel &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._operations, _operations) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, id, name,
      const DeepCollectionEquality().hash(_operations), path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModuleModelCopyWith<_$_ModuleModel> get copyWith =>
      __$$_ModuleModelCopyWithImpl<_$_ModuleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModuleModelToJson(
      this,
    );
  }
}

abstract class _ModuleModel implements ModuleModel {
  const factory _ModuleModel(
      {required final String icon,
      required final String id,
      required final Module name,
      required final List<Operation> operations,
      required final String path}) = _$_ModuleModel;

  factory _ModuleModel.fromJson(Map<String, dynamic> json) =
      _$_ModuleModel.fromJson;

  @override
  String get icon;
  @override
  String get id;
  @override
  Module get name;
  @override
  List<Operation> get operations;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_ModuleModelCopyWith<_$_ModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
