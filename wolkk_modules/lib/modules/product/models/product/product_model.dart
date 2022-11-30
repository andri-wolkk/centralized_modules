import 'package:wolkk_core/wolkk_core.dart';

import '../price/price_model.dart';
import '../stock/stock_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    // String? image,
    required String name,
    // required List<PriceModel> prices,
    // List<StockModel>? stocks,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
