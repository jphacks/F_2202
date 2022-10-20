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
      rent: json['rent'] as String? ?? '',
      roomCount: json['room_count'] as String? ?? '',
      propetyStoructure: json['propety_storucture'] as String? ?? '',
      totalGroundStory: json['total_ground_story'] as String? ?? '',
      netYield: json['net_yield'] as String? ?? '',
      propertyType: json['property_type'] as String? ?? '',
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
    };
