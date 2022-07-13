import 'dart:async';

import 'package:donor_darah/ui/pages/user_location.dart';
import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  StreamController<UserLocation> _locationStreamController =
      StreamController<UserLocation>();
  Stream<UserLocation> get locationStream => _locationStreamController.stream;

  LocationService() {
    location.requestPermission().then((permissionStatus) {
      if (permissionStatus == PermissionStatus.granted) {
        location.onLocationChanged.listen((LocationData) {
          if (LocationData != null) {
            _locationStreamController.add(UserLocation(
                latitude: LocationData.latitude,
                longitude: LocationData.longitude));
          }
        });
      }
    });
  }

  void dispose() => _locationStreamController.close();
}
