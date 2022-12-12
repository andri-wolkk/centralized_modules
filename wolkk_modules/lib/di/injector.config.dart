// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wolkk_core/wolkk_core.dart' as _i3;
import 'package:wolkk_modules/cubit/module/module_cubit.dart' as _i9;
import 'package:wolkk_modules/modules/modules.dart' as _i7;
import 'package:wolkk_modules/modules/product/bloc/image/image_bloc.dart'
    as _i8;
import 'package:wolkk_modules/modules/product/bloc/product/product_bloc.dart'
    as _i11;
import 'package:wolkk_modules/modules/product/repositories/remote/image_remote_repository.dart'
    as _i4;
import 'package:wolkk_modules/modules/product/repositories/remote/product_remote_repository.dart'
    as _i6;
import 'package:wolkk_modules/repositories/module/local/module_local_repository.dart'
    as _i5;
import 'package:wolkk_modules/repositories/repositories.dart' as _i10;

import 'register_module.dart' as _i12;

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
  gh.factory<_i3.Dio>(() => registerModule.dio());
  gh.lazySingleton<_i4.ImageRemoteRepository>(
      () => _i4.ImageRemoteRepositoryImpl(dio: gh<_i3.Dio>()));
  gh.lazySingleton<_i5.ModuleLocalRepository>(
      () => _i5.ModuleLocalRepositoryImpl());
  gh.lazySingleton<_i6.ProductRemoteRepository>(
      () => _i6.ProductRemoteRepositoryImpl(
            dio: gh<_i3.Dio>(),
            imageRemoteRepository: gh<_i7.ImageRemoteRepository>(),
          ));
  gh.singleton<_i8.ImageBloc>(
      _i8.ImageBloc(repository: gh<_i4.ImageRemoteRepository>()));
  gh.singleton<_i9.ModuleCubit>(
      _i9.ModuleCubit(moduleLocalRepository: gh<_i10.ModuleLocalRepository>()));
  gh.singleton<_i11.ProductBloc>(
      _i11.ProductBloc(repository: gh<_i6.ProductRemoteRepository>()));
  return getIt;
}

class _$RegisterModule extends _i12.RegisterModule {}
