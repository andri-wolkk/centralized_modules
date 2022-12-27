import 'package:wolkk_modules/wolkk_modules.dart';

import 'ui/pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await configureDependencies('environtment');
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (context) => const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 820),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: GetIt.I<ImageBloc>()),
            BlocProvider.value(value: GetIt.I<ProductBloc>()),
          ],
          child: MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: const MainPage(),
          ),
        );
      },
    );
  }
}
