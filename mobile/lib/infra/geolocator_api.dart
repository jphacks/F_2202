import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';

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
}