import 'package:wolkk_core/wolkk_core.dart';

import 'injector.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies(String env) async =>
    $initGetIt(GetIt.instance, environment: env);
