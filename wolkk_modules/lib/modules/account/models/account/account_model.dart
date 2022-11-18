import 'package:wolkk_core/wolkk_core.dart';

import '../role/role_model.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    required String id,
    required String image,
    required String name,
    required String pin,
    required RoleModel role,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
