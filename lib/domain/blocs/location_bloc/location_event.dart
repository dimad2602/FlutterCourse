part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.requestPermission() = _RequestPermission;
  const factory LocationEvent.getLocation() = _Getlocation;
}