import 'package:wolkk_core/wolkk_core.dart';

abstract class ImageRemoteRepository {
  Future<Either<ServerFailure, String>> get({
    required String id,
    required Options options,
    required String path,
    required String url,
  });
}

@LazySingleton(as: ImageRemoteRepository)
class ImageRemoteRepositoryImpl implements ImageRemoteRepository {
  ImageRemoteRepositoryImpl({required this.dio});

  final Dio dio;

  @override
  Future<Either<ServerFailure, String>> get({
    required String id,
    required Options options,
    required String path,
    required String url,
  }) async {
    try {
      final response = await dio.get(
        '$url/$path/$id',
        options: options.copyWith(responseType: ResponseType.bytes),
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
