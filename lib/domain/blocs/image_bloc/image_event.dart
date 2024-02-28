part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.getFromCamera() = _GetFromCamera;
  const factory ImageEvent.loadFromGallery() = _LoadFromGallery;
}