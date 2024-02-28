import 'package:app_settings/app_settings.dart';
import 'package:curse_app_1/data/repositories/location_repo/i_location_repo.dart';
import 'package:curse_app_1/models/location_model/location_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationRepo extends ILocationRepository {
  @override
  Future<LocationStatus> checkPermission() async {
    final PermissionStatus permissonStatus = await Permission.location.status;
    if (permissonStatus == PermissionStatus.permanentlyDenied ||
        permissonStatus == PermissionStatus.restricted) {
      return LocationStatus.denied;
    } else if (permissonStatus == PermissionStatus.denied) {
      final newStatus = await Permission.location.request();
      if (newStatus == PermissionStatus.permanentlyDenied ||
          newStatus == PermissionStatus.restricted) {
        return LocationStatus.denied;
      } else if (newStatus == PermissionStatus.denied) {
        return LocationStatus.notGranted;
      } else {
        return LocationStatus.granted;
      }
    } else {
      return LocationStatus.granted;
    }
  }

  @override
  Future<LocationModel> getLocation() async {
    final status = await checkPermission();
    if (status == LocationStatus.denied) {
      throw Exception('Permission denied');
    }
    if (status == LocationStatus.notGranted) {
      throw Exception('Not granted');
    }
    return await getLocationInternal();
  }

  Future<LocationModel> getLocationInternal() async {
    final locationWorks = await Geolocator.isLocationServiceEnabled();
    if (!locationWorks) {
      throw Exception("No location service enabled");
    }

    final position = await Geolocator.getCurrentPosition();
    return LocationModel(
        latitude: position.latitude, longitude: position.longitude);
  }

  @override
  Stream<LocationModel> getLocationStream() {
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
    );
    return Geolocator.getPositionStream(locationSettings: locationSettings).map(
        (e) => LocationModel(latitude: e.latitude, longitude: e.longitude));
  }

  @override
  Future<void> openAppSettings() {
    return AppSettings.openAppSettings(type: AppSettingsType.settings);
  }

  @override
  Future<void> openSettings() {
    return AppSettings.openAppSettings(type: AppSettingsType.location);
  }
}
