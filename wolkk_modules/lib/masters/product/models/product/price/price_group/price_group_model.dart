import 'package:wolkk_core/wolkk_core.dart';

part 'price_group_model.freezed.dart';
part 'price_group_model.g.dart';

@freezed
class PriceGroupModel with _$PriceGroupModel {
  const factory PriceGroupModel({
    required String id,
    required String name,
  }) = _PriceGroupModel;

  factory PriceGroupModel.fromJson(Map<String, dynamic> json) =>
      _$PriceGroupModelFromJson(json);
}
