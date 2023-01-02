import 'package:wolkk_modules/wolkk_modules.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CorePage(
      corePanel: CorePanel(
        panel: PanelModel(
          header: const HeaderPanel(),
          main: const CatalogPanel(),
          navigation: Container(
            color: Colors.redAccent,
          ),
          secondary: Container(
            color: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
