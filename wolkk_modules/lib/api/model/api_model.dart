import 'package:wolkk_core/wolkk_core.dart';

part 'api_model.freezed.dart';

enum Source { korona, other }

@freezed
class ApiModel with _$ApiModel {
  const factory ApiModel({
    required Source source,
  }) = _ApiModel;
}
