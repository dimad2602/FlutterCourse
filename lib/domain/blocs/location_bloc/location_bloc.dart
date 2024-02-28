import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:curse_app_1/data/repositories/location_repo/i_location_repo.dart';
import 'package:curse_app_1/models/location_model/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationRepository _repository;

  //StreamSubscription<LocationModel>? _locationSubscription;
  LocationBloc(this._repository) : super(const LocationState.initial()) {
    on<LocationEvent>((event, emit) async {
      await event.map(
          requestPermission: (_) => _requestPermission(_, emit),
          getLocation: (_) => _getLocation(_, emit));
    });
  }

  FutureOr<void> _requestPermission(_RequestPermission _requestPermission,
      Emitter<LocationState> emit) async {
    emit(const LocationState.loading());
    print('_requestPermission');
    try {
      final status = await _repository.checkPermission();
      if (status == LocationStatus.denied ||
          status == LocationStatus.notGranted) {
        emit(const LocationState.permissionDenied());
      } else {
        emit(const LocationState.granted());
      }
    } catch (_) {
      emit(const LocationState.error());
    }
  }

  FutureOr<void> _getLocation(
      _Getlocation _getlocation, Emitter<LocationState> emit) async {
    emit(const LocationState.loading());
    try {
      final location = await _repository.getLocation();
      emit(LocationState.granted(locationModel: location));
    } catch (_) {
      emit(const LocationState.error());
    }
  }

  // @override
  // Future<void> close() {
  //   _locationSubscription?.cancel();
  //   return super.close();
  // }
}
