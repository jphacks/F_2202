import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/model/store/store.dart';

part 'store_api.freezed.dart';
part 'store_api.g.dart';

@freezed
abstract class StoreApi with _$StoreApi {
  const StoreApi._();
  const factory StoreApi.response({
    required String? name,
    required String? placeId,
    required Geometry? geometry,
    required List<Photos>? photos,
    required double? rating,
    required int? userRatingsTotal,
  }) = StoreApiResponse;

  factory StoreApi.fromJson(Map<String, dynamic> json) =>
      _$StoreApiFromJson(json);

  Store toEntity() => Store(
        name: name ?? '',
        photoReference: photos?[0].photoReference ?? '',
        placeId: placeId ?? '',
        latitude: geometry?.location.lat ?? 0.0,
        longitude: geometry?.location.lng ?? 0.0,
        rating: rating ?? 0.0,
        userRatingsTotal: userRatingsTotal ?? 0,
      );
}

// 位置情報周り
@freezed
abstract class Geometry with _$Geometry {
  const factory Geometry({
    required Locations location,
  }) = _Geometry;
  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
abstract class Locations with _$Locations {
  const factory Locations({
    required double lat,
    required double lng,
  }) = _Locations;
  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
}

// 写真
@freezed
abstract class Photos with _$Photos {
  const factory Photos({
    required String photoReference,
  }) = _Photos;
  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
