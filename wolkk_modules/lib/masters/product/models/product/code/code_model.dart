import 'package:wolkk_core/wolkk_core.dart';

part 'code_model.freezed.dart';
part 'code_model.g.dart';

@freezed
class CodeModel with _$CodeModel {
  const factory CodeModel({
    required String productCode,
    required double containerSize,
  }) = _CodeModel;

  factory CodeModel.fromJson(Map<String, dynamic> json) =>
      _$CodeModelFromJson(json);
}
