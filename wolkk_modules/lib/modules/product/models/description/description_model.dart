import 'package:wolkk_core/wolkk_core.dart';

part 'description_model.freezed.dart';
part 'description_model.g.dart';

@freezed
class DescriptionModel with _$DescriptionModel {
  const factory DescriptionModel({
    required String text,
    required String type,
  }) = _DescriptionModel;

  factory DescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$DescriptionModelFromJson(json);
}
