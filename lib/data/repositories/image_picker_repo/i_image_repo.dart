import 'dart:io';

abstract class IImageRepository {
  Future<File> getFromCamera();

  Future<File> getFromGallery();
}
