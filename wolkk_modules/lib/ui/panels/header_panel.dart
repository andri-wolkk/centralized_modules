import 'package:wolkk_core/wolkk_core.dart';

class HeaderPanel extends StatefulWidget {
  const HeaderPanel({super.key});

  @override
  State<HeaderPanel> createState() => _HeaderPanelState();
}

class _HeaderPanelState extends State<HeaderPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: const Center(
        child: Text(
          'Header Panel From Wolkk Modules UI',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
