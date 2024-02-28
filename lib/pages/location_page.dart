import 'package:curse_app_1/data/repositories/location_repo/location_repo.dart';
import 'package:curse_app_1/domain/blocs/location_bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(LocationRepo())
        ..add(const LocationEvent.requestPermission()),
      child: Scaffold(
        appBar: AppBar(title: const Text("Location")),
        body: BlocBuilder<LocationBloc, LocationState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return Center(child: Text(state.toString()));
              },
              granted: (location) {
                return Builder(builder: (context) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Доступ предоставлен"),
                        const SizedBox(height: 4,),
                        location != null ?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("lat = ${location.latitude.toString()}"),
                          const SizedBox(width: 20,),
                          Text("long = ${location.longitude.toString()}"),
                        ],): const SizedBox.shrink(),
                        const SizedBox(height: 4,),
                        OutlinedButton(
                            onPressed: () {
                              context
                                  .read<LocationBloc>()
                                  .add(const LocationEvent.getLocation());
                            },
                            child: const Text("Получить координаты"))
                      ],
                    ),
                  );
                });
              },
              notGranted: () {
                return const Center(child: Text("Не предоставлено"));
              },
              permissionDenied: () {
                return const Center(child: Text("Доступ запрещен "));
              },
              loading: () {
                return const Center(child: Text("Загрузка"));
              },
              error: () {
                return const Center(child: Text("Ошибка"));
              },
            );
          },
        ),
      ),
    );
  }
}
