import 'package:wolkk_core/wolkk_core.dart';

import '../../commodity_group/commodity_group.dart';
import '../../product/product.dart';

part 'catalog_model.freezed.dart';
part 'catalog_model.g.dart';

@freezed
class CatalogModel with _$CatalogModel {
  const factory CatalogModel({
    CommodityGroupModel? commodityGroup,
    ProductModel? product,
  }) = _CatalogModel;

  factory CatalogModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogModelFromJson(json);
}
