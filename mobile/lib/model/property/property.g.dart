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
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'property_name': instance.propertyName,
      'prefecture': instance.prefecture,
      'city': instance.city,
      'region': instance.region,
      'address': instance.address,
    };
