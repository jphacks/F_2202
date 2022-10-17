import 'package:dio/dio.dart';
import 'package:mobile/infra/property.dart';
import 'package:mobile/model/property/property.dart';

class PropertyDataSourceImpl with PropertyDataSource {
  final PropertyDataSource _client;

  PropertyDataSourceImpl([PropertyDataSource? client])
      : _client = client ?? PropertyDataSource(Dio());

  @override
  Future<Property> getProperty() {
    return _client.getProperty();
  }
}
