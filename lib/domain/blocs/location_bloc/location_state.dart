part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.granted({LocationModel? locationModel}) =
      _Granted;
  const factory LocationState.notGranted() = _NotGranted;
  const factory LocationState.permissionDenied() = _PermissionDenied;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.error() = _Error;
}
