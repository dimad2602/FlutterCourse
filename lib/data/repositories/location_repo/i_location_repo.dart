import 'package:curse_app_1/models/location_model/location_model.dart';

abstract class ILocationRepository {
  Future<LocationModel> getLocation();
  Stream<LocationModel> getLocationStream();
  Future<LocationStatus> checkPermission();
  Future<void> openAppSettings();
  Future<void> openSettings();
}
