import 'package:wolkk_core/wolkk_core.dart';

part 'commodity_group_model.freezed.dart';
part 'commodity_group_model.g.dart';

@freezed
class CommodityGroupModel with _$CommodityGroupModel {
  const factory CommodityGroupModel({
    required String id,
    required String name,
    required String number,
    CommodityGroupModel? parentCommodityGroup,
  }) = _CommodityGroupModel;

  factory CommodityGroupModel.fromJson(Map<String, dynamic> json) =>
      _$CommodityGroupModelFromJson(json);
}
