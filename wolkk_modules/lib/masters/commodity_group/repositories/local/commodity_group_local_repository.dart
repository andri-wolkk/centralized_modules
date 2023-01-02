import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';

abstract class CommodityGroupLocalRepository {
  Future<Either<LocalFailure, List<CommodityGroupModel>>> fetch({
    required String path,
  });
}

@LazySingleton(as: CommodityGroupLocalRepository)
class CommodityGroupLocalRepositoryImpl
    implements CommodityGroupLocalRepository {
  @override
  Future<Either<LocalFailure, List<CommodityGroupModel>>> fetch({
    required String path,
  }) async {
    try {
      final response = await rootBundle.loadString(path);
      if (response.isNotEmpty) {
        List results = jsonDecode(response)['results'];
        List<CommodityGroupModel> commodityGroups = [];
        commodityGroups
            .addAll(results.map((e) => CommodityGroupModel.fromJson(e)));
        return Right(commodityGroups);
      } else {
        return const Left(
          LocalFailure(
            code: 'NO_DATA',
            message: 'No data commodity group in local source...',
          ),
        );
      }
    } on Exception catch (e) {
      throw LocalException(message: e.toString());
    }
  }
}
