import 'package:wolkk_core/wolkk_core.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
class TagModel with _$TagModel {
  const factory TagModel({
    required String id,
    required String name,
    required String number,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
