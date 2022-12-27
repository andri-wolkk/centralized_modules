import 'package:wolkk_core/wolkk_core.dart';

import 'code/code_model.dart';
import 'commodity_group/commodity_group_model.dart';
import 'description/description_model.dart';
import 'image/image_model.dart';
import 'price/price_model.dart';
import 'stock/stock_model.dart';
import 'tag/tag_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @Default([]) List<CodeModel> codes,
    required CommodityGroupModel commodityGroup,
    @Default([]) List<DescriptionModel> description,
    required String id,
    ImageModel? image,
    @Default('') String imageBinary,
    @Default(0) double maxPrice,
    @Default(0) double minPrice,
    required String name,
    @Default('') String number,
    @Default([]) List<PriceModel> prices,
    @Default([]) List<StockModel> stocks,
    @Default([]) List<TagModel> tags,
    @Default(true) bool trackInventory,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
