// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationApiResponse _$$DestinationApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$DestinationApiResponse(
      placeId: json['placeId'] as String?,
      description: json['description'] as String?,
      structuredFormatting: json['structuredFormatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              json['structuredFormatting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DestinationApiResponseToJson(
        _$DestinationApiResponse instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'description': instance.description,
      'structuredFormatting': instance.structuredFormatting,
    };

_$_StructuredFormatting _$$_StructuredFormattingFromJson(
        Map<String, dynamic> json) =>
    _$_StructuredFormatting(
      mainText: json['mainText'] as String,
      secondaryText: json['secondaryText'] as String,
    );

Map<String, dynamic> _$$_StructuredFormattingToJson(
        _$_StructuredFormatting instance) =>
    <String, dynamic>{
      'mainText': instance.mainText,
      'secondaryText': instance.secondaryText,
    };
