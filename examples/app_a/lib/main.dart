import 'package:wolkk_modules/wolkk_modules.dart';

import 'pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // const ApiModel(source: Source.korona);
  await configureDependencies('environment');
  runApp(const App());
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
          child: const MaterialApp(
            home: MainPage(),
          ),
        );
      },
    );
  }
}
