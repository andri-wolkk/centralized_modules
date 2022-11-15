import 'package:wolkk_modules/modules.dart';

import 'pages/main_pages.dart';

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
        return const MaterialApp(
          home: MainPage(),
        );
      },
    );
  }
}
