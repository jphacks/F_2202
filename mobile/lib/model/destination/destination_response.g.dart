// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationApiResponse _$$DestinationApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$DestinationApiResponse(
      placeId: json['place_id'] as String?,
      description: json['description'] as String?,
      structuredFormatting: json['structured_formatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              json['structured_formatting'] as Map<String, dynamic>),
      structuredFormattingSub: json['structured_formatting_sub'] == null
          ? null
          : StructuredFormatting.fromJson(
              json['structured_formatting_sub'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DestinationApiResponseToJson(
        _$DestinationApiResponse instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'description': instance.description,
      'structured_formatting': instance.structuredFormatting?.toJson(),
      'structured_formatting_sub': instance.structuredFormattingSub?.toJson(),
    };

_$_StructuredFormatting _$$_StructuredFormattingFromJson(
        Map<String, dynamic> json) =>
    _$_StructuredFormatting(
      mainText: json['main_text'] as String,
      secondaryText: json['secondary_text'] as String,
    );

Map<String, dynamic> _$$_StructuredFormattingToJson(
        _$_StructuredFormatting instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'secondary_text': instance.secondaryText,
    };
