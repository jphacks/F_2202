import 'dart:convert';
import 'package:google_maps_webservice/places.dart';
import 'package:http/http.dart';
import 'package:async/async.dart';
import 'package:mobile/config/config.dart';

mixin GoogleMapPlaceSearchApi {
  /// リクエストを送る
  static Future<Result<Map<String, dynamic>>> _request(
      {required String url}) async {
    final client = Client();
    final request = Uri.parse(url);

    final response = await client.get(request);

    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      return Result.value(decoded);
    }
    return Result.error('result not found');
  }

  static Future<Result<List<dynamic>>> fetch({
    required double latitude,
    required double longtitude,
    required int radius,
    required String keyword,
  }) async {
    final placeApiKey =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?'
        'key=$googleMapApiKey&location=$latitude,$longtitude&radius=$radius&language=ja&keyword=$keyword';

    List<dynamic> list = [];

    try {
      final response = await _request(url: placeApiKey);

      // TODO(naruo): ここでお店など取得する

      return Result.value(list);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
