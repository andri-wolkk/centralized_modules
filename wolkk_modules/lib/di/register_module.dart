import 'package:wolkk_core/wolkk_core.dart';

@module
abstract class RegisterModule {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: dotenv.env['BASE_URL'].toString(),
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Basic ${base64Encode(utf8.encode('${dotenv.env['USERNAME']}:${dotenv.env['PASSWORD']}'))}',
          },
        ),
      );
}
