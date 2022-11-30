import 'package:wolkk_core/wolkk_core.dart';

import '../store/store_model.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  const factory StockModel({
    required String id,
    required double stock,
    required StoreModel store,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);
}
