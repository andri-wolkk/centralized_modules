import 'package:wolkk_core/wolkk_core.dart';

import '../../../models/models.dart';

abstract class IModuleLocalRepository {
  Future<Either<LocalFailure, List<ModuleModel>>> fetchModules(String source);
}

class ModuleLocalRepository implements IModuleLocalRepository {
  @override
  Future<Either<LocalFailure, List<ModuleModel>>> fetchModules(
    String source,
  ) async {
    try {
      var response = await rootBundle.loadString(source);
      final data = await json.decode(response);
      if (data.isNotEmpty) {
        List<ModuleModel> listProductModel = <ModuleModel>[];
        data['modules'].forEach((value) {
          listProductModel.add(ModuleModel.fromJson(value));
        });
        return Right(listProductModel);
      } else {
        return const Left(
          LocalFailure(
              code: 'UNEXPECTED_FAILURE',
              message: 'Failed to fetch product in local source...'),
        );
      }
    } catch (e) {
      throw LocalException(message: e.toString());
    }
  }
}
