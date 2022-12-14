import 'package:wolkk_modules/wolkk_modules.dart';

class Korona {
  static String accounts = 'accounts';
  static String baseUrl =
      'https://128.koronacloud.com/web/api/v3/$accounts/$koronaId';
  static String images = 'images';
  static String koronaId = '58922ca4-bdb6-4a42-9fb3-e720f5c063c4';
  static Options options = Options(
    headers: <String, String>{
      'authorization':
          'Basic ${base64.encode(utf8.encode('${Korona.username}:${Korona.password}'))}',
    },
  );

  static String password = '42ea2524-0bc6-470c-9ae2-5f3039d5eb6a';
  static String products = 'products';
  static String results = 'results';
  static String stocks = 'stocks';
  static String username = 'korona_integration';
}
