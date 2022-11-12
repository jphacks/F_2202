// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreApiResponse _$$StoreApiResponseFromJson(Map<String, dynamic> json) =>
    _$StoreApiResponse(
      name: json['name'] as String?,
      placeId: json['place_id'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photos.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toDouble(),
      userRatingsTotal: json['user_ratings_total'] as int?,
    );

Map<String, dynamic> _$$StoreApiResponseToJson(_$StoreApiResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place_id': instance.placeId,
      'geometry': instance.geometry?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'rating': instance.rating,
      'user_ratings_total': instance.userRatingsTotal,
    };

_$_Geometry _$$_GeometryFromJson(Map<String, dynamic> json) => _$_Geometry(
      location: Locations.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryToJson(_$_Geometry instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
    };

_$_Locations _$$_LocationsFromJson(Map<String, dynamic> json) => _$_Locations(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationsToJson(_$_Locations instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_Photos _$$_PhotosFromJson(Map<String, dynamic> json) => _$_Photos(
      photoReference: json['photo_reference'] as String,
    );

Map<String, dynamic> _$$_PhotosToJson(_$_Photos instance) => <String, dynamic>{
      'photo_reference': instance.photoReference,
    };
