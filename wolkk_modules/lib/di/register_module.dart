import 'package:wolkk_core/wolkk_core.dart';

@module
abstract class RegisterModule {
  Dio dio() =>
      Dio(BaseOptions(baseUrl: 'https://128.koronacloud.com/web/api/v3',));
  // ApiModel api() => ApiModel(source: Source.korona);
}
