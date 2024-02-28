import 'package:curse_app_1/data/repositories/image_picker_repo/image_repo.dart';
import 'package:curse_app_1/domain/blocs/image_bloc/image_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageBloc(ImageRepo()),
      child: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<ImageBloc, ImageState>(
                    builder: (context, state) {
                      return state.map(initial: (_) {
                        return const SizedBox.shrink();
                      }, withFile: (value) {
                        return Image.file(
                          value.file,
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        );
                      });
                    },
                  ),
                  OutlinedButton(
                      onPressed: () {
                        context.read<ImageBloc>().add(const ImageEvent.getFromCamera());
                      },
                      child: const Text("Камера")),
                  OutlinedButton(onPressed: () {
                    context.read<ImageBloc>().add(const ImageEvent.loadFromGallery());
                  }, child: const Text("Галерея")),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
