import 'package:wolkk_core/wolkk_core.dart';

part 'amount_model.freezed.dart';
part 'amount_model.g.dart';

@freezed
class AmountModel with _$AmountModel {
  const factory AmountModel({
    @Default(0) double actual,
    @Default(0) double lent,
    @Default(0) double ordered,
  }) = _AmountModel;

  factory AmountModel.fromJson(Map<String, dynamic> json) =>
      _$AmountModelFromJson(json);
}
