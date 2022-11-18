import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_failure.freezed.dart';
part 'core_failure.g.dart';

@freezed
class CoreFailure with _$CoreFailure {
  factory CoreFailure.fromJson(Map<String, dynamic> json) =>
      _$CoreFailureFromJson(json);

  const factory CoreFailure.localFailure({
    required String code,
    required String message,
  }) = LocalFailure;

  const factory CoreFailure.serverFailure({
    required String code,
    required String message,
    required String statusCode,
  }) = ServerFailure;
}
