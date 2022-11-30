import 'package:wolkk_core/wolkk_core.dart';

import '../../models/product/product_model.dart';
import '../../repositories/repositories.dart';

part 'product_cubit.freezed.dart';
part 'product_state.dart';

@singleton
class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.productRemoteRepository})
      : super(const ProductState.initial());

  final ProductRemoteRepository productRemoteRepository;
  List<ProductModel> products = [];

  void fetchProducts({required String key, required String source}) async {
    try {
      final result = await productRemoteRepository.fetchProducts(
        key: key,
        source: source,
      );
      result.fold(
        (l) {
          if (l is Failure) {
            emit(Failure(code: 'SERVER FAILURE', message: l.message));
          }
        },
        (r) {
          if (r.isNotEmpty) {
            products = r;
            emit(Fetched(products: products));
          }
          if (r.isEmpty) {
            emit(
              const Failure(
                code: 'NO DATA FAILURE',
                message: 'No Data Found...',
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(
        Failure(
          code: 'UNEXPECTED FAILURE',
          message: e.toString(),
        ),
      );
    }
  }
}
