import 'package:wolkk_core/wolkk_core.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required String id,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
