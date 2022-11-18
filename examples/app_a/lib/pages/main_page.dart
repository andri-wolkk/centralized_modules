import 'package:wolkk_modules/wolkk_modules.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CorePage(
      corePanel: CorePanel(
        panel: PanelModel(
          header: const HeaderPanel(),
          main: Container(
            color: Colors.amber,
          ),
          navigation: Container(
            color: Colors.redAccent,
          ),
          // secondary: const Center(
          //   child: Text('Secondary Panel From This APP'),
          // ),
        ),
      ),
    );
  }
}
