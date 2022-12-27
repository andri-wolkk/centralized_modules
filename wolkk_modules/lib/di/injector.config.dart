// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wolkk_core/wolkk_core.dart' as _i3;
import 'package:wolkk_modules/api/api.dart' as _i8;
import 'package:wolkk_modules/api/services/api_service.dart' as _i6;
import 'package:wolkk_modules/cubits/module/module_cubit.dart' as _i9;
import 'package:wolkk_modules/masters/masters.dart' as _i12;
import 'package:wolkk_modules/masters/product/blocs/image/image_bloc.dart'
    as _i13;
import 'package:wolkk_modules/masters/product/blocs/product/product_bloc.dart'
    as _i14;
import 'package:wolkk_modules/masters/product/product.dart' as _i15;
import 'package:wolkk_modules/masters/product/repositories/local/product_local_repository.dart'
    as _i5;
import 'package:wolkk_modules/masters/product/repositories/remote/image_remote_repository.dart'
    as _i7;
import 'package:wolkk_modules/masters/product/repositories/remote/product_remote_repository.dart'
    as _i11;
import 'package:wolkk_modules/repositories/module/local/module_local_repository.dart'
    as _i4;
import 'package:wolkk_modules/repositories/repositories.dart' as _i10;

import 'register_module.dart' as _i16;

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
  gh.lazySingleton<_i5.ProductLocalRepository>(
      () => _i5.ProductLocalRepositoryImpl());
  gh.singleton<_i6.ApiService>(_i6.ApiServiceImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i7.ImageRemoteRepository>(
      () => _i7.ImageRemoteRepositoryImpl(api: gh<_i8.ApiService>()));
  gh.singleton<_i9.ModuleCubit>(
      _i9.ModuleCubit(moduleLocalRepository: gh<_i10.ModuleLocalRepository>()));
  gh.lazySingleton<_i11.ProductRemoteRepository>(
      () => _i11.ProductRemoteRepositoryImpl(
            api: gh<_i8.ApiService>(),
            imageRemoteRepository: gh<_i12.ImageRemoteRepository>(),
          ));
  gh.singleton<_i13.ImageBloc>(
      _i13.ImageBloc(repository: gh<_i7.ImageRemoteRepository>()));
  gh.singleton<_i14.ProductBloc>(_i14.ProductBloc(
    productLocalRepository: gh<_i15.ProductLocalRepository>(),
    productRemoteRepository: gh<_i15.ProductRemoteRepository>(),
  ));
  return getIt;
}

class _$RegisterModule extends _i16.RegisterModule {}
