import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';

@freezed
class Destination with _$Destination {
  const factory Destination({
    @Default('') String name,
    @Default('') String placeId,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default('') String address,
  }) = _Destination;
}
