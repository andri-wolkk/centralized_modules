// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      codes: (json['codes'] as List<dynamic>?)
              ?.map((e) => CodeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: (json['description'] as List<dynamic>?)
              ?.map((e) => DescriptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: json['id'] as String,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      imageBinary: json['imageBinary'] as String? ?? '',
      maxPrice: (json['maxPrice'] as num?)?.toDouble() ?? 0,
      minPrice: (json['minPrice'] as num?)?.toDouble() ?? 0,
      name: json['name'] as String,
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => PriceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stocks: (json['stocks'] as List<dynamic>?)
              ?.map((e) => StockModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => TagModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      trackInventory: json['trackInventory'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'codes': instance.codes,
      'description': instance.description,
      'id': instance.id,
      'image': instance.image,
      'imageBinary': instance.imageBinary,
      'maxPrice': instance.maxPrice,
      'minPrice': instance.minPrice,
      'name': instance.name,
      'prices': instance.prices,
      'stocks': instance.stocks,
      'tags': instance.tags,
      'trackInventory': instance.trackInventory,
    };
