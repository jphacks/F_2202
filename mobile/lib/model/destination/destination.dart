import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'destination.freezed.dart';

@freezed
class Destination with _$Destination {
  const factory Destination({
    @Default('') String placeId,
    @Default('') String description,
    @Default('') String placeName,
    @Default('') String placeAddress,
  }) = _Destination;
}
