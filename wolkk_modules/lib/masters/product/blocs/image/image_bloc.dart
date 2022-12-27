import 'package:wolkk_core/wolkk_core.dart';

import '../../../../utils/transformer.dart';
import '../../repositories/repositories.dart';

part 'image_bloc.freezed.dart';
part 'image_event.dart';
part 'image_state.dart';

@singleton
class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc({required this.repository}) : super(const ImageInitialState()) {
    on<ImageGetEvent>(_get, transformer: Transformer.getEvent());
  }

  final ImageRemoteRepository repository;

  Future<void> _get(ImageGetEvent event, Emitter<ImageState> emit) async {
    emit(const ImageLoadingState());
    try {
      await repository.get(id: event.id, path: event.path).then(
        (result) {
          result.fold(
            (l) {
              if (l is ImageFailureState) {
                emit(ImageFailureState(
                  code: 'SERVER FAILURE',
                  message: l.message,
                ));
              }
            },
            (r) {
              emit(ImageLoadedState(image: r));
            },
          );
        },
      );
    } catch (e) {
      emit(
        ImageFailureState(
          code: 'UNEXPECTED FAILURE',
          message: e.toString(),
        ),
      );
    }
  }
}
