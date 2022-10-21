import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeolocatorApi {
  /// 位置情報の許可を取得する
  static Future<void> requestPermissionLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
  }

  /// 現在地を取得する
  static Future<Result<Position>> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      return Result.value(position);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  static Future<LatLng> getSelectedAddress({
    required String address,
  }) async {
    List<Location> locations = await locationFromAddress(address);
    return LatLng(
      locations.first.latitude,
      locations.first.longitude,
    );
  }

  static Future<String> getSelectedLocation({
    required LatLng latlng,
  }) async {
    final address = await Geocoder.local.findAddressesFromCoordinates(
      Coordinates(
        latlng.latitude,
        latlng.longitude,
      ),
    );

    return address.first.countryName;
  }
}
