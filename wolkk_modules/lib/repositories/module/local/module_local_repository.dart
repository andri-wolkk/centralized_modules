import 'package:wolkk_core/wolkk_core.dart';

import '../../../models/models.dart';

abstract class ModuleLocalRepository {
  Future<Either<LocalFailure, List<ModuleModel>>> fetchModules({
    required String key,
    required String source,
  });
}

@LazySingleton(as: ModuleLocalRepository)
class ModuleLocalRepositoryImpl implements ModuleLocalRepository {
  List<ModuleModel> listModule = <ModuleModel>[];

  @override
  Future<Either<LocalFailure, List<ModuleModel>>> fetchModules({
    required String key,
    required String source,
  }) async {
    try {
      var response = await rootBundle.loadString(source);
      final data = await json.decode(response);
      if (data.isNotEmpty) {
        listModule.clear();
        data[key].forEach((value) {
          listModule.add(ModuleModel.fromJson(value));
        });
        return Right(listModule);
      } else {
        return const Left(
          LocalFailure(code: 'NO DATA FAILURE', message: 'No Data Found...'),
        );
      }
    } catch (e) {
      throw LocalException(message: e.toString());
    }
  }
}
