import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:mobile/model/property/property.dart';

const baseUrl = 'https://jphacks-dev.rcp.ai/';
mixin PropertyApi {
  /// リクエストを送る
  static Future<Result<List<Property>>> _request({required String url}) async {
    final request = Uri.parse(url);

    final response = await http.get(
      request,
      headers: {
        'content-type': 'application/json',
        'auth': 'jphacks2022',
      },
    );

    if (response.statusCode == 200) {
      final results =
          await json.decode(utf8.decode(response.bodyBytes)) as List<dynamic>;
      List<Property> propertyList = [];
      for (var result in results) {
        propertyList.add(PropertyModelResponse.fromJson(result).toEntity());
      }

      return Result.value(propertyList);
    }

    return Result.error('result not found');
  }

  static Future<Result<List<Property>>> fetchProperty(
      {required String keyword}) async {
    try {
      final response = await _request(
        url: baseUrl + 'v1/buildings?p=1&city=$keyword',
      );

      return Result.value(response.asValue!.value);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
