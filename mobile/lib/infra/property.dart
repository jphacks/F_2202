import 'dart:convert';
import 'package:http/http.dart';
import 'package:async/async.dart';
import 'package:mobile/model/property/property.dart';

const baseUrl = 'https://jphacks-dev.rcp.ai/';
mixin PropertyApi {
  /// リクエストを送る
  static Future<Result<Map<String, dynamic>>> _request(
      {required String url}) async {
    final client = Client();
    final request = Uri.parse(url);

    final response = await client.get(
      request,
      headers: {
        'accept': 'application/json',
        'auth': 'jphacks2022',
      },
    );

    if (response.statusCode == 200) {
      final decoded = json.decode(response.body);
      return Result.value(decoded);
    }
    return Result.error('result not found');
  }

  static List<Property> _getPropertyList(Map<String, dynamic> decoded) {
    List<Property> propertyList = [];
    // for (var result in decoded['predictions']) {
    //   destinationList.add(DestinationApiResponse.fromJson(result).toEntity());
    // }
    return propertyList;
  }

  static Future<Result<List<Property>>> fetchDestination() async {
    try {
      final response = await _request(url: baseUrl + 'v1/buildings');
      print(response);
      final decoded = response.asValue!.value;
      final destinationList = _getPropertyList(decoded);

      return Result.value(destinationList);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
