import 'package:wolkk_core/wolkk_core.dart';

import '../../../../api/api.dart';

abstract class ImageRemoteRepository {
  Future<Either<ServerFailure, String>> get({
    required String id,
    required String path,
  });
}

@LazySingleton(as: ImageRemoteRepository)
class ImageRemoteRepositoryImpl implements ImageRemoteRepository {
  ImageRemoteRepositoryImpl({required this.api});

  final ApiService api;

  @override
  Future<Either<ServerFailure, String>> get({
    required String id,
    required String path,
  }) async {
    try {
      final response = await api.get(
        path: '$path/$id',
        options: Options(responseType: ResponseType.bytes),
      );
      if (response.statusCode == 200) {
        return Right(base64Encode(response.data));
      } else {
        return Left(
          ServerFailure(
            code: 'UNEXPECTED_FAILURE',
            message: 'Failed to get image in remote source...',
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
