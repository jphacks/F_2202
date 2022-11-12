import 'dart:convert';
import 'package:http/http.dart';
import 'package:async/async.dart';
import 'package:mobile/config/config.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/model/destination/destination_response.dart';
import 'package:mobile/model/store/store.dart';
import 'package:mobile/model/store/store_api.dart';

mixin GoogleMapPlaceSearchApi {
  /// リクエストを送る
  static Future<Result<Map<String, dynamic>>> _request(
      {required String url}) async {
    final client = Client();
    final request = Uri.parse(url);

    final response = await client.get(
      request,
    );

    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      return Result.value(decoded);
    }
    return Result.error('result not found');
  }

  static List<Destination> _getDestinationList(Map<String, dynamic> decoded) {
    List<Destination> destinationList = [];
    for (var result in decoded['predictions']) {
      destinationList.add(DestinationApiResponse.fromJson(result).toEntity());
    }
    return destinationList;
  }

  static Future<Result<List<Destination>>> fetchDestination({
    required String keyword,
  }) async {
    final placeApiKey =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$keyword&language=ja&components=country:jp&key=$googleMapApiKey&libraries=places';
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

  static List<Store> _getStoreList(Map<String, dynamic> decoded) {
    List<Store> museumList = [];
    for (var result in decoded['results']) {
      museumList.add(StoreApiResponse.fromJson(result).toEntity());
    }
    return museumList;
  }

  static Future<Result<List<dynamic>>> fetchStore({
    required double latitude,
    required double longtitude,
    required String keyword,
  }) async {
    final placeApiKey =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?'
        'key=$googleMapApiKey&location=$latitude,$longtitude&radius=5000&language=ja&keyword=$keyword';

    List<Store> storeList = [];

    try {
      final response = await _request(url: placeApiKey);
      final decoded = response.asValue!.value;

      /// 飲食店の追加
      final list = _getStoreList(decoded);
      storeList.addAll(list);

      return Result.value(storeList);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  static Future<Location> getPlaceDetailFromId(String placeId) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(apiKey: googleMapApiKey);
    PlacesDetailsResponse placesDetailsResponse =
        await places.getDetailsByPlaceId(placeId);
    Location location = placesDetailsResponse.result.geometry!.location;

    return location;
  }
}
