part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.get({
    required String id,
    required String path,
  }) = ImageGetEvent;
}
