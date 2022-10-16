import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/model/destination/destination.dart';

part 'destination_response.freezed.dart';
part 'destination_response.g.dart';

@freezed
abstract class DestinationApi with _$DestinationApi {
  const DestinationApi._();
  const factory DestinationApi.response({
    required String? placeId,
    required String? description,
    required StructuredFormatting? structuredFormatting,
  }) = DestinationApiResponse;

  factory DestinationApi.fromJson(Map<String, dynamic> json) =>
      _$DestinationApiFromJson(json);

  Destination toEntity() => Destination(
      placeId: placeId ?? '',
      description: description ?? '',
      placeName: structuredFormatting?.mainText ?? '',
      placeAddress: structuredFormatting?.secondaryText ?? '');
}

// 検索
@freezed
abstract class StructuredFormatting with _$StructuredFormatting {
  const factory StructuredFormatting({
    required String mainText,
    required String secondaryText,
  }) = _StructuredFormatting;
  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
}
