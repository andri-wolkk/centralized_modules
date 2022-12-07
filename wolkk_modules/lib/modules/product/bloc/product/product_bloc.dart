import 'package:wolkk_core/wolkk_core.dart';

import '../../../../utils/transformer.dart';
import '../../models/product/product_model.dart';
import '../../repositories/remote/product_remote_repository.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@singleton
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({required this.productRemoteRepository})
      : super(const ProductState.initial()) {
    on<FetchProductEvent>(_fetchProducts, transformer: Transformer.getEvent());
    on<SearchProductEvent>(
      _searchProducts,
      transformer: Transformer.getEvent(),
    );
  }

  final ProductRemoteRepository productRemoteRepository;
  List<ProductModel> products = [];

  Future<void> _fetchProducts(
    FetchProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductLoadingState());
    try {
      await productRemoteRepository
          .fetchProducts(
        key: event.key,
        options: event.options,
        path: event.path,
      )
          .then((result) {
        result.fold(
          (l) {
            if (l is ProductFailureState) {
              emit(ProductFailureState(
                  code: 'SERVER FAILURE', message: l.message));
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
                  code: 'NO DATA FAILURE',
                  message: 'No Data Found...',
                ),
              );
            }
          },
        );
      });
    } catch (e) {
      emit(
        ProductFailureState(
          code: 'UNEXPECTED FAILURE',
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _searchProducts(
    SearchProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductLoadingState());

    try {
      final result = await productRemoteRepository.searchProducts(
        keywords: event.keywords,
      );
      result.fold(
        (l) {
          if (l is ProductFailureState) {
            emit(ProductFailureState(
                code: 'SERVER FAILURE', message: l.message));
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
                code: 'NO DATA FAILURE',
                message: 'No Data Found...',
              ),
            );
          }
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
}
