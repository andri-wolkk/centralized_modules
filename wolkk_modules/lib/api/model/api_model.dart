import 'package:wolkk_core/wolkk_core.dart';

part 'api_model.freezed.dart';

enum Source { korona, other }

@freezed
class ApiModel with _$ApiModel {
  const factory ApiModel({
    required Options options,
    required String path,
    required Source source,
    required String url,
  }) = _ApiModel;

  const factory ApiModel.fetch({required String id}) = Fetch;

  const factory ApiModel.get({required String id}) = Get;
}
