import 'package:freezed_annotation/freezed_annotation.dart';

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
