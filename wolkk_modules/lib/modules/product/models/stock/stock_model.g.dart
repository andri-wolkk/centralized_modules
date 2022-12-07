// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockModel _$$_StockModelFromJson(Map<String, dynamic> json) =>
    _$_StockModel(
      amount: json['amount'] == null
          ? null
          : AmountModel.fromJson(json['amount'] as Map<String, dynamic>),
      warehouse:
          WarehouseModel.fromJson(json['warehouse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StockModelToJson(_$_StockModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'warehouse': instance.warehouse,
    };
