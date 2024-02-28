part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState.initial() = _Initial;

  const factory ImageState.withFile({required File file}) = _WithFile;
}
