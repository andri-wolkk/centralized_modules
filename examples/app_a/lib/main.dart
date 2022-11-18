import 'package:wolkk_modules/wolkk_modules.dart';

import 'pages/main_page.dart';

void main() {
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
            BlocProvider<ModuleCubit>(
              create: (BuildContext context) => ModuleCubit(),
            ),
          ],
          child: const MaterialApp(
            home: MainPage(),
          ),
        );
      },
    );
  }
}
