import 'package:wolkk_modules/wolkk_modules.dart';

import '../const/korona.dart';

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
                    // builder: (context, state) {
                    //   log('[debug] state : $state');
                    //   return const SizedBox();
                    // },
                    builder: (context, state) => state.maybeWhen(
                      orElse: () => const Center(
                        child: SizedBox(),
                      ),
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
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Name : ${products[index].name}'),
                            if (products[index].tags != null)
                              Row(
                                children: [
                                  for (var tag in products[index].tags!)
                                    Text('Tag : ${tag.name}')
                                ],
                              ),
                            Text(
                                'Stock : ${products[index].stocks!.isNotEmpty ? products[index].stocks![0].amount?.actual : 0}'),
                          ],
                        ),
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
