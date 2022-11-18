import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_exception.freezed.dart';
part 'core_exception.g.dart';

@freezed
class CoreException with _$CoreException implements Exception {
  factory CoreException.fromJson(Map<String, dynamic> json) =>
      _$CoreExceptionFromJson(json);

  const factory CoreException.localException({required String message}) =
      LocalException;

  const factory CoreException.serverException({required String message}) =
      ServerException;
}
