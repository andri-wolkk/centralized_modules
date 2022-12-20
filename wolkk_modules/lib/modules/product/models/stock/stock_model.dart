import 'package:wolkk_core/wolkk_core.dart';

import '../amount/amount_model.dart';
import '../warehouse/warehouse_model.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  const factory StockModel({
    required AmountModel amount,
    required WarehouseModel warehouse,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);
}
