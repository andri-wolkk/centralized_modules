import 'package:wolkk_core/wolkk_core.dart';

abstract class ImageRemoteRepository {
  Future<Either<ServerFailure, String>> get({required String id});
}

@LazySingleton(as: ImageRemoteRepository)
class ImageRemoteRepositoryImpl implements ImageRemoteRepository {
  ImageRemoteRepositoryImpl({required this.dio});

  final Dio dio;

  @override
  Future<Either<ServerFailure, String>> get({
    required String id,
  }) async {
    try {
      final response = await dio.get(
        'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/images/$id',
        options: Options(
          headers: <String, String>{
            'authorization':
                'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
          },
          responseType: ResponseType.bytes,
        ),
      );
      if (response.statusCode == 200) {
        return Right(base64Encode(response.data));
      } else {
        return Left(
          ServerFailure(
            code: response.statusCode.toString(),
            message: response.statusMessage!,
            statusCode: response.statusCode!,
          ),
        );
      }
    } on DioError catch (e) {
      return Left(
        ServerFailure(
          code: (e.response?.statusCode).toString(),
          message: e.response?.data['message'],
          statusCode: (e.response?.statusCode)!,
        ),
      );
    } on Exception catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
