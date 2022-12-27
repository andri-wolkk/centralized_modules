import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';
import '../../repositories/repositories.dart';

part 'module_cubit.freezed.dart';
part 'module_state.dart';

@singleton
class ModuleCubit extends Cubit<ModuleState> {
  ModuleCubit({required this.moduleLocalRepository})
      : super(const ModuleState.initial());

  final ModuleLocalRepository moduleLocalRepository;
  List<ModuleModel> modules = [];

  void fetchModules({required String key, required String source}) async {
    try {
      final result = await moduleLocalRepository.fetchModules(
        key: key,
        source: source,
      );
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
