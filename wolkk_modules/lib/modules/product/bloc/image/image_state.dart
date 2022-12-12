part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = ImageFailureState;

  const factory ImageState.initial() = ImageInitialState;

  const factory ImageState.loaded({
    required String image,
  }) = ImageLoadedState;

  const factory ImageState.loading() = ImageLoadingState;
}
