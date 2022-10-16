import 'dart:convert';
import 'package:http/http.dart';
import 'package:async/async.dart';
import 'package:mobile/config/config.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/model/destination/response/destination_api.dart';

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

  static List<Destination> _getDestinationList(Map<String, dynamic> decoded) {
    List<Destination> destinationList = [];
    for (var result in decoded['results']) {
      destinationList.add(DestinationApiResponse.fromJson(result).toEntity());
    }
    return destinationList;
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

    try {
      final response = await _request(url: placeApiKey);
      final decoded = response.asValue!.value;

      /// 目的地の候補の追加
      final destinationList = _getDestinationList(decoded);

      return Result.value(destinationList);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
