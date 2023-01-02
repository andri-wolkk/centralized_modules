import 'package:wolkk_core/wolkk_core.dart';

import '../../../../utils/transformer.dart';
import '../../models/models.dart';
import '../../repositories/repositories.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@singleton
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    required this.productLocalRepository,
    required this.productRemoteRepository,
  }) : super(const ProductState.initial()) {
    on<ProductFetchEvent>(_fetch, transformer: Transformer.getEvent());
    on<ProductInitEvent>(_init, transformer: Transformer.getEvent());
  }

  String path = '';
  final ProductLocalRepository productLocalRepository;
  final ProductRemoteRepository productRemoteRepository;
  List<ProductModel> products = [];

  Future<void> _fetch(
    ProductFetchEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductLoadingState());
    try {
      await productLocalRepository.fetch(path: path).then(
        (result) {
          result.fold(
            (l) {
              if (l is ProductFailureState) {
                emit(
                  ProductFailureState(
                    code: 'LOCAL_FAILURE',
                    message: l.message,
                  ),
                );
              }
            },
            (r) {
              if (r.isNotEmpty) {
                products = r;
                emit(ProductFetchedState(products: products));
              }
              if (r.isEmpty) {
                emit(
                  const ProductFailureState(
                    code: 'NO_DATA_FAILURE',
                    message: 'No Data Found...',
                  ),
                );
              }
            },
          );
        },
      );
    } catch (e) {
      emit(
        ProductFailureState(
          code: 'UNEXPECTED FAILURE',
          message: e.toString(),
        ),
      );
    }
  }

  void _init(ProductInitEvent event, Emitter<ProductState> emit) {
    path = event.path;
  }
}
