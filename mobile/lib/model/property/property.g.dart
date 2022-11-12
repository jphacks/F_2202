// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      id: json['id'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      name: json['name'] as String? ?? '',
      prefecture: json['prefecture'] as String? ?? '',
      city: json['city'] as String? ?? '',
      region: json['region'] as String? ?? '',
      address: json['address'] as String? ?? '',
      rent: json['rent'] as int? ?? 0,
      roomCount: json['room_count'] as int? ?? 0,
      floorPlan: json['floor_plan'] as String? ?? '',
      totalGroundStory: json['total_ground_story'] as int? ?? 0,
      netYield: (json['net_yield'] as num?)?.toDouble() ?? 0.0,
      florPart: json['flor_part'] as String? ?? '',
      propertyType: json['property_type'] as String? ?? '',
      transportion: json['transportion'] == null
          ? const Transportion()
          : Transportion.fromJson(json['transportion'] as Map<String, dynamic>),
      fee: json['fee'] as int? ?? 0,
      area: (json['area'] as num?)?.toDouble() ?? 0.0,
      propetyStoructure: json['propety_storucture'] as String? ?? '',
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0.0,
      isCenter: json['is_center'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
      'rent': instance.rent,
      'room_count': instance.roomCount,
      'floor_plan': instance.floorPlan,
      'total_ground_story': instance.totalGroundStory,
      'net_yield': instance.netYield,
      'flor_part': instance.florPart,
      'property_type': instance.propertyType,
      'transportion': instance.transportion.toJson(),
      'fee': instance.fee,
      'area': instance.area,
      'propety_storucture': instance.propetyStoructure,
      'lat': instance.lat,
      'lng': instance.lng,
      'rate': instance.rate,
      'is_center': instance.isCenter,
    };

_$PropertyModelResponse _$$PropertyModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$PropertyModelResponse(
      id: json['id'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      name: json['name'] as String? ?? '',
      prefecture: json['prefecture'] as String? ?? '',
      city: json['city'] as String? ?? '',
      region: json['region'] as String? ?? '',
      address: json['address'] as String? ?? '',
      rent: json['rent'] as int? ?? 0,
      roomCount: json['room_count'] as int? ?? 0,
      floorPlan: json['floor_plan'] as String? ?? '',
      florPart: json['flor_part'] as String? ?? '',
      totalGroundStory: json['total_ground_story'] as int? ?? 0,
      netYield: (json['net_yield'] as num?)?.toDouble() ?? 0.0,
      propertyType: json['property_type'] as String? ?? '',
      fee: json['fee'] as int? ?? 0,
      area: (json['area'] as num?)?.toDouble() ?? 0.0,
      propetyStoructure: json['propety_storucture'] as String? ?? '',
      transportion: json['transportion'] == null
          ? const Transportion()
          : Transportion.fromJson(json['transportion'] as Map<String, dynamic>),
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$PropertyModelResponseToJson(
        _$PropertyModelResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
      'rent': instance.rent,
      'room_count': instance.roomCount,
      'floor_plan': instance.floorPlan,
      'flor_part': instance.florPart,
      'total_ground_story': instance.totalGroundStory,
      'net_yield': instance.netYield,
      'property_type': instance.propertyType,
      'fee': instance.fee,
      'area': instance.area,
      'propety_storucture': instance.propetyStoructure,
      'transportion': instance.transportion.toJson(),
      'lat': instance.lat,
      'lng': instance.lng,
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
