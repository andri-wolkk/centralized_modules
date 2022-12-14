part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.load({
    required String id,
    required Options options,
    required String path,
    required String url,
  }) = ImageLoadEvent;
}
