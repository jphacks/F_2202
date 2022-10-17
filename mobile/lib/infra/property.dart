import 'dart:io';
import 'package:dio/dio.dart' hide Headers;
import 'package:mobile/model/property/property.dart';
import 'package:retrofit/http.dart';

part 'property.g.dart';

@RestApi(baseUrl: 'https://jphacks-dev.rcp.ai/')
abstract class PropertyDataSource {
  factory PropertyDataSource(Dio dio, {String baseUrl}) = _PropertyDataSource;

  @Headers({'application/json': 'jphacks2022'})
  @GET('/v1/buildings')
  Future<Property> getProperty();
}
