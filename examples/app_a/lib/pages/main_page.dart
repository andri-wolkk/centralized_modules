import 'package:wolkk_modules/wolkk_modules.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    GetIt.I<ModuleCubit>()
        .fetchModules(key: 'modules', source: 'assets/datasets/modules.json');
    GetIt.I<ProductCubit>()
        .fetchProducts(key: 'results', source: 'assets/datasets/products.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            fetched: (products) => ListView.separated(
              itemBuilder: (context, index) => Text(products[index].name),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: products.length,
            ),
          ),
        ),
      ),
    );
    // return CorePage(
    //   corePanel: CorePanel(
    //     panel: PanelModel(
    //       header: const HeaderPanel(),
    //       main: Container(
    //         color: Colors.amber,
    //       ),
    //       navigation: Container(
    //         color: Colors.redAccent,
    //         child: BlocBuilder<ModuleCubit, ModuleState>(
    //           builder: (context, state) {
    //             log('[debug] state : $state');
    //             return Container();
    //           },
    //           // builder: (context, state) => state.maybeWhen(
    //           //   orElse: () => const Center(
    //           //     child: CircularProgressIndicator(),
    //           //   ),
    //           //   fetched: (modules) => ListView.separated(
    //           //     itemBuilder: (context, index) =>
    //           //         Text('$modules[index].name}'),
    //           //     separatorBuilder: (context, index) => const Divider(),
    //           //     itemCount: modules.length,
    //           //   ),
    //           // ),
    //         ),
    //       ),
    //       // secondary: const Center(
    //       //   child: Text('Secondary Panel From This APP'),
    //       // ),
    //     ),
    //   ),
    // );
  }
}
