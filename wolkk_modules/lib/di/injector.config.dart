// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wolkk_core/wolkk_core.dart' as _i3;
import 'package:wolkk_modules/api/api.dart' as _i7;
import 'package:wolkk_modules/api/services/api_service.dart' as _i5;
import 'package:wolkk_modules/cubits/module/module_cubit.dart' as _i8;
import 'package:wolkk_modules/masters/masters.dart' as _i11;
import 'package:wolkk_modules/masters/product/blocs/image/image_bloc.dart'
    as _i12;
import 'package:wolkk_modules/masters/product/blocs/product/product_bloc.dart'
    as _i13;
import 'package:wolkk_modules/masters/product/repositories/remote/image_remote_repository.dart'
    as _i6;
import 'package:wolkk_modules/masters/product/repositories/remote/product_remote_repository.dart'
    as _i10;
import 'package:wolkk_modules/repositories/module/local/module_local_repository.dart'
    as _i4;
import 'package:wolkk_modules/repositories/repositories.dart' as _i9;

import 'register_module.dart' as _i14;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.ModuleLocalRepository>(
      () => _i4.ModuleLocalRepositoryImpl());
  gh.singleton<_i5.ApiService>(_i5.ApiServiceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i6.ImageRemoteRepository>(
      () => _i6.ImageRemoteRepositoryImpl(api: gh<_i7.ApiService>()));
  gh.singleton<_i8.ModuleCubit>(
      _i8.ModuleCubit(moduleLocalRepository: gh<_i9.ModuleLocalRepository>()));
  gh.lazySingleton<_i10.ProductRemoteRepository>(
      () => _i10.ProductRemoteRepositoryImpl(
            api: gh<_i7.ApiService>(),
            imageRemoteRepository: gh<_i11.ImageRemoteRepository>(),
          ));
  gh.singleton<_i12.ImageBloc>(
      _i12.ImageBloc(repository: gh<_i6.ImageRemoteRepository>()));
  gh.singleton<_i13.ProductBloc>(
      _i13.ProductBloc(repository: gh<_i10.ProductRemoteRepository>()));
  return getIt;
}

class _$RegisterModule extends _i14.RegisterModule {}
