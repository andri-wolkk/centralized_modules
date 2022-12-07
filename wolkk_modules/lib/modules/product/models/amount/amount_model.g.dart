// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AmountModel _$$_AmountModelFromJson(Map<String, dynamic> json) =>
    _$_AmountModel(
      actual: (json['actual'] as num?)?.toDouble() ?? 0,
      lent: (json['lent'] as num?)?.toDouble() ?? 0,
      ordered: (json['ordered'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_AmountModelToJson(_$_AmountModel instance) =>
    <String, dynamic>{
      'actual': instance.actual,
      'lent': instance.lent,
      'ordered': instance.ordered,
    };
