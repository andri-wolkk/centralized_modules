// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      id: json['id'] as String,
      store: StoreModel.fromJson(json['store'] as Map<String, dynamic>),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store': instance.store,
      'value': instance.value,
    };
