part of 'module_cubit.dart';

@freezed
class ModuleState with _$ModuleState {
  const factory ModuleState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = Failure;

  const factory ModuleState.fetched({
    required List<ModuleModel> modules,
  }) = Fetched;

  const factory ModuleState.initial() = Initial;
}
