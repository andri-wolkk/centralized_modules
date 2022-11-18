import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';
import '../../repositories/repositories.dart';

part 'module_cubit.freezed.dart';
part 'module_state.dart';

class ModuleCubit extends Cubit<ModuleState> {
  ModuleCubit() : super(const ModuleState.initial());

  late final ModuleLocalRepository moduleLocalRepo;
  List<ModuleModel> modules = [];

  void fetchModules({required String source}) async {
    try {
      final result = await moduleLocalRepo.fetchModules(source);
      result.fold(
        (l) {
          if (l is Failure) {
            emit(Failure(code: 'LOCAL FAILURE', message: l.message));
          }
        },
        (r) {
          if (r.isNotEmpty) {
            modules = r;
            emit(Fetched(modules: modules));
          }
          if (r.isEmpty) {
            emit(
              const Failure(
                code: 'NO DATA FAILURE',
                message: 'No Data Found...',
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(
        Failure(
          code: 'UNEXPECTED FAILURE',
          message: e.toString(),
        ),
      );
    }
  }
}
