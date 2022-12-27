import 'package:wolkk_core/wolkk_core.dart';

part 'warehouse_model.freezed.dart';
part 'warehouse_model.g.dart';

@freezed
class WarehouseModel with _$WarehouseModel {
  const factory WarehouseModel({
    required String id,
    required String name,
  }) = _WarehouseModel;

  factory WarehouseModel.fromJson(Map<String, dynamic> json) =>
      _$WarehouseModelFromJson(json);
}
