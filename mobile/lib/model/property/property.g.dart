// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      propertyName: json['property_name'] as String? ?? '',
      prefecture: json['prefecture'] as String? ?? '',
      city: json['city'] as String? ?? '',
      region: json['region'] as String? ?? '',
      address: json['address'] as String? ?? '',
      rent: json['rent'] as int? ?? 0,
      roomCount: json['room_count'] as int? ?? 0,
      propetyStoructure: json['propety_storucture'] as String? ?? '',
      totalGroundStory: json['total_ground_story'] as int? ?? 0,
      netYield: (json['net_yield'] as num?)?.toDouble() ?? 0.0,
      propertyType: json['property_type'] as String? ?? '',
      transportion: json['transportion'] == null
          ? const Transportion()
          : Transportion.fromJson(json['transportion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'property_name': instance.propertyName,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
      'rent': instance.rent,
      'room_count': instance.roomCount,
      'propety_storucture': instance.propetyStoructure,
      'total_ground_story': instance.totalGroundStory,
      'net_yield': instance.netYield,
      'property_type': instance.propertyType,
      'transportion': instance.transportion.toJson(),
    };

_$PropertyModelResponse _$$PropertyModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$PropertyModelResponse(
      propertyName: json['property_name'] as String? ?? '',
      prefecture: json['prefecture'] as String? ?? '',
      city: json['city'] as String? ?? '',
      region: json['region'] as String? ?? '',
      address: json['address'] as String? ?? '',
      rent: json['rent'] as int? ?? 0,
      roomCount: json['room_count'] as int? ?? 0,
      propetyStoructure: json['propety_storucture'] as String? ?? '',
      totalGroundStory: json['total_ground_story'] as int? ?? 0,
      netYield: (json['net_yield'] as num?)?.toDouble() ?? 0.0,
      propertyType: json['property_type'] as String? ?? '',
      transportion: json['transportion'] == null
          ? const Transportion()
          : Transportion.fromJson(json['transportion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyModelResponseToJson(
        _$PropertyModelResponse instance) =>
    <String, dynamic>{
      'property_name': instance.propertyName,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
      'rent': instance.rent,
      'room_count': instance.roomCount,
      'propety_storucture': instance.propetyStoructure,
      'total_ground_story': instance.totalGroundStory,
      'net_yield': instance.netYield,
      'property_type': instance.propertyType,
      'transportion': instance.transportion.toJson(),
    };

_$_Transportion _$$_TransportionFromJson(Map<String, dynamic> json) =>
    _$_Transportion(
      stationName: json['station_name'] as String?,
      railroadName: json['railroad_name'] as String?,
      stationWalkTime: json['station_walk_time'] as String?,
    );

Map<String, dynamic> _$$_TransportionToJson(_$_Transportion instance) =>
    <String, dynamic>{
      'station_name': instance.stationName,
      'railroad_name': instance.railroadName,
      'station_walk_time': instance.stationWalkTime,
    };
