import 'package:wolkk_modules/wolkk_modules.dart';

import '../const/korona.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Dio dio = Dio();

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
      ProductEvent.fetch(
        key: Korona.results,
        path: Korona.fetchProductPath,
        options: Options(
          headers: <String, String>{
            'authorization':
                'Basic ${base64.encode(utf8.encode('${Korona.username}:${Korona.password}'))}',
          },
        ),
      ),
    );
    // _searchController.addListener(
    //   () {
    //     GetIt.I<ProductBloc>().add(
    //       ProductEvent.search(
    //         keywords: _searchController.text,
    //       ),
    //     );
    //   },
    // );
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
                      fetched: (products) => ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              products[index].imageBinary.isNotEmpty
                                  ? Image.memory(
                                      base64Decode(products[index].imageBinary),
                                      height: 50,
                                      width: 50,
                                    )
                                  : Image.network(
                                      'https://cdn3.iconfinder.com/data/icons/design-n-code/100/272127c4-8d19-4bd3-bd22-2b75ce94ccb4-512.png',
                                      height: 50,
                                    ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'ImageBinary : ${products[index].imageBinary}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Image : ${products[index].image ?? ''}',
                                    ),
                                    Text(
                                      'Codes : ${products[index].codes.isNotEmpty ? products[index].codes : ''}',
                                    ),
                                    Text('Name : ${products[index].name}'),
                                    Text(
                                      'Tags : ${products[index].tags.isNotEmpty ? products[index].tags : ''}',
                                    ),
                                    Text(
                                      'Stock : ${products[index].stocks.isNotEmpty ? products[index].stocks : ''}',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: products.length,
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
          // secondary: Container(
          //   color: Colors.greenAccent,
          // ),
        ),
      ),
    );
  }
}
