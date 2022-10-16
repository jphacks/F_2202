// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationApiResponse _$$DestinationApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$DestinationApiResponse(
      name: json['name'] as String?,
      placeId: json['placeId'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DestinationApiResponseToJson(
        _$DestinationApiResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'placeId': instance.placeId,
      'geometry': instance.geometry,
    };

_$_Geometry _$$_GeometryFromJson(Map<String, dynamic> json) => _$_Geometry(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryToJson(_$_Geometry instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
