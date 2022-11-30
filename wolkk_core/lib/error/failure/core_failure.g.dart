// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalFailure _$$LocalFailureFromJson(Map<String, dynamic> json) =>
    _$LocalFailure(
      code: json['code'] as String,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalFailureToJson(_$LocalFailure instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ServerFailure _$$ServerFailureFromJson(Map<String, dynamic> json) =>
    _$ServerFailure(
      code: json['code'] as String,
      message: json['message'] as String,
      statusCode: json['statusCode'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerFailureToJson(_$ServerFailure instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };
