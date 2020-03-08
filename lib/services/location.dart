import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position geolocator = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = geolocator.latitude;
      longitude = geolocator.longitude;
    }
    catch (e) {
     print(e);
    }
  }
}