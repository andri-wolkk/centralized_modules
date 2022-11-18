// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModuleModel _$$_ModuleModelFromJson(Map<String, dynamic> json) =>
    _$_ModuleModel(
      icon: json['icon'] as String,
      id: json['id'] as String,
      name: $enumDecode(_$ModuleEnumMap, json['name']),
      operations: (json['operations'] as List<dynamic>)
          .map((e) => $enumDecode(_$OperationEnumMap, e))
          .toList(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$$_ModuleModelToJson(_$_ModuleModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'id': instance.id,
      'name': _$ModuleEnumMap[instance.name]!,
      'operations':
          instance.operations.map((e) => _$OperationEnumMap[e]!).toList(),
      'path': instance.path,
    };

const _$ModuleEnumMap = {
  Module.account: 'account',
  Module.cashier: 'cashier',
};

const _$OperationEnumMap = {
  Operation.add: 'add',
  Operation.delete: 'delete',
  Operation.get: 'get',
  Operation.getList: 'getList',
  Operation.update: 'update',
};
