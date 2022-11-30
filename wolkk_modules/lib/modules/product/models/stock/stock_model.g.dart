// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockModel _$$_StockModelFromJson(Map<String, dynamic> json) =>
    _$_StockModel(
      id: json['id'] as String,
      stock: (json['stock'] as num).toDouble(),
      store: StoreModel.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StockModelToJson(_$_StockModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stock': instance.stock,
      'store': instance.store,
    };
