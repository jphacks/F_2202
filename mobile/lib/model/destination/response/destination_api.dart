import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/model/destination/destination.dart';

part 'destination_api.freezed.dart';
part 'destination_api.g.dart';

@freezed
abstract class DestinationApi with _$DestinationApi {
  const DestinationApi._();
  const factory DestinationApi.response({
    required String? name,
    required String? placeId,
    required Geometry? geometry,
  }) =  DestinationApiResponse;

  factory DestinationApi.fromJson(Map<String, dynamic> json) =>
      _$DestinationApiFromJson(json);

  Destination toEntity() => Destination(
        name: name ?? '',
        placeId: placeId ?? '',
        latitude: geometry?.location.lat ?? 0.0 ,
        longitude: geometry?.location.lng ?? 0.0,
      );
}

// 位置情報周り
@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    required Location location,
  }) = _Geometry;
  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    required double lat,
    required double lng,
  }) = _Location;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}