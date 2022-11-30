// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:wolkk_modules/cubit/module/module_cubit.dart' as _i5;
import 'package:wolkk_modules/modules/product/cubit/product/product_cubit.dart'
    as _i7;
import 'package:wolkk_modules/modules/product/repositories/remote/product_remote_repository.dart'
    as _i4;
import 'package:wolkk_modules/modules/product/repositories/repositories.dart'
    as _i8;
import 'package:wolkk_modules/repositories/module/local/module_local_repository.dart'
    as _i3;
import 'package:wolkk_modules/repositories/repositories.dart' as _i6;

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
  gh.lazySingleton<_i3.ModuleLocalRepository>(
      () => _i3.ModuleLocalRepositoryImpl());
  gh.lazySingleton<_i4.ProductRemoteRepository>(
      () => _i4.ProductRemoteRepositoryImpl());
  gh.singleton<_i5.ModuleCubit>(
      _i5.ModuleCubit(moduleLocalRepository: gh<_i6.ModuleLocalRepository>()));
  gh.singleton<_i7.ProductCubit>(_i7.ProductCubit(
      productRemoteRepository: gh<_i8.ProductRemoteRepository>()));
  return getIt;
}
