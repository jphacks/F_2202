import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';

@freezed
class Store with _$Store {
  const factory Store({
    @Default('') String name,
    @Default('') String placeId,
    @Default('') String photoReference,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default(0.0) double rating,
    @Default('') String website,
    @Default('') String address,
    @Default([]) List<String> openingHours,
    @Default(0) int userRatingsTotal,
    @Default('') String meter,
    @Default('') String star,
  }) = _Store;
}