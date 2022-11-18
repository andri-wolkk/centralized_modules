// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalException _$$LocalExceptionFromJson(Map<String, dynamic> json) =>
    _$LocalException(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalExceptionToJson(_$LocalException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ServerException _$$ServerExceptionFromJson(Map<String, dynamic> json) =>
    _$ServerException(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerExceptionToJson(_$ServerException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
