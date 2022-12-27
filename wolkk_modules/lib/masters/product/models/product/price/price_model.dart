import 'package:wolkk_core/wolkk_core.dart';

import 'price_group/price_group_model.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';

@freezed
class PriceModel with _$PriceModel {
  const factory PriceModel({
    required PriceGroupModel priceGroup,
    required double value,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}
