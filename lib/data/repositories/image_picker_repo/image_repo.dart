import 'dart:io';

import 'package:curse_app_1/data/repositories/image_picker_repo/i_image_repo.dart';
import 'package:image_picker/image_picker.dart';

class ImageRepo extends IImageRepository {
  @override
  Future<File> getFromCamera() => pickImageFromSource(ImageSource.camera);

  @override
  Future<File> getFromGallery() => pickImageFromSource(ImageSource.gallery);

  Future<File> pickImageFromSource(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) throw Exception("No image");
    return File(image.path);
  }
}
