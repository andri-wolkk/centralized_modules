import 'package:wolkk_modules/wolkk_modules.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    GetIt.I<ProductBloc>().add(
      const ProductEvent.fetch(path: '/products'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CorePage(
      corePanel: CorePanel(
        panel: PanelModel(
          header: const HeaderPanel(),
          main: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 50,
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: BlocBuilder<ProductBloc, ProductState>(
                    // builder: (context, state) {
                    //   log('[debug] state : $state');
                    //   return Container(
                    //     color: Colors.amber,
                    //   );
                    // },
                    builder: (context, state) => state.maybeWhen(
                      orElse: () {
                        return const Center(
                          child: SizedBox(),
                        );
                      },
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (product) => Column(
                        children: [
                          Text('Id : ${product.id}'),
                          Text('Name : ${product.name}'),
                          Text('Image : ${product.image}'),
                        ],
                      ),
                      fetched: (products) => GridView.count(
                        scrollDirection: Axis.vertical,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height / 2) /
                                (MediaQuery.of(context).size.width / 2),
                        crossAxisCount: 4,
                        mainAxisSpacing: 15.w,
                        crossAxisSpacing: 15.w,
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: products
                            .map((product) =>
                                ProductCardWidget(product: product))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
