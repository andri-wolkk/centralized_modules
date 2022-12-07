// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wolkk_core/wolkk_core.dart' as _i3;
import 'package:wolkk_modules/cubit/module/module_cubit.dart' as _i6;
import 'package:wolkk_modules/modules/product/bloc/product/product_bloc.dart'
    as _i8;
import 'package:wolkk_modules/modules/product/repositories/remote/product_remote_repository.dart'
    as _i5;
import 'package:wolkk_modules/repositories/module/local/module_local_repository.dart'
    as _i4;
import 'package:wolkk_modules/repositories/repositories.dart' as _i7;

import 'register_module.dart' as _i9;

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
  gh.lazySingleton<_i4.ModuleLocalRepository>(
      () => _i4.ModuleLocalRepositoryImpl());
  gh.lazySingleton<_i5.ProductRemoteRepository>(
      () => _i5.ProductRemoteRepositoryImpl(dio: gh<_i3.Dio>()));
  gh.singleton<_i6.ModuleCubit>(
      _i6.ModuleCubit(moduleLocalRepository: gh<_i7.ModuleLocalRepository>()));
  gh.singleton<_i8.ProductBloc>(_i8.ProductBloc(
      productRemoteRepository: gh<_i5.ProductRemoteRepository>()));
  return getIt;
}

class _$RegisterModule extends _i9.RegisterModule {}
