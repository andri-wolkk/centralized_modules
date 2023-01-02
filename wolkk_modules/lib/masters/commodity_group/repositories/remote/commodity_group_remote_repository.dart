import 'package:wolkk_core/wolkk_core.dart';

import '../../../../api/api.dart';
import '../../models/models.dart';

abstract class CommodityGroupRemoteRepository {
  Future<Either<ServerFailure, List<CommodityGroupModel>>> fetch({
    required String path,
  });
}

@LazySingleton(as: CommodityGroupRemoteRepository)
class CommodityGroupRemoteRepositoryImpl
    implements CommodityGroupRemoteRepository {
  CommodityGroupRemoteRepositoryImpl({required this.api});

  final ApiService api;

  @override
  Future<Either<ServerFailure, List<CommodityGroupModel>>> fetch({
    required String path,
  }) async {
    try {
      final response = await api.get(path: path);
      if (response.statusCode == 200) {
        List<CommodityGroupModel> commodityGroups = [];
        for (var data in response.data['results']) {
          CommodityGroupModel commodityGroup =
              CommodityGroupModel.fromJson(data);
          commodityGroups.add(commodityGroup);
        }
        return Right(commodityGroups);
      } else {
        return Left(
          ServerFailure(
            code: 'UNEXPECTED_FAILURE',
            message: 'Failed to fetch commodity group in remote source...',
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
