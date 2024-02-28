import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/data/repositories/image_picker_repo/i_image_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_event.dart';
part 'image_state.dart';
part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final IImageRepository _repository;
  ImageBloc(this._repository) : super(const ImageState.initial()) {
    on<ImageEvent>((event, emit) async {
      await event.map(
          getFromCamera: (_) => _getFromCamera(_, emit),
          loadFromGallery: (_) => _loadFromGallery(_, emit));
    });
  }

  FutureOr<void> _getFromCamera(
      _GetFromCamera _getFromCamera, Emitter<ImageState> emit) async {
    try {
      final file = await _repository.getFromCamera();
      emit(ImageState.withFile(file: file));
    } catch (_) {
      throw Exception('');
    }
  }

  FutureOr<void> _loadFromGallery(
      _LoadFromGallery _loadFromGallery, Emitter<ImageState> emit) async {
    try {
      final file = await _repository.getFromGallery();
      emit(ImageState.withFile(file: file));
    } catch (_) {
      throw Exception('');
    }
  }
}
