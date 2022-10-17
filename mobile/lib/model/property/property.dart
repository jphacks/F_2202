import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';
part 'property.g.dart';

@freezed
class Property with _$Property {
  const factory Property({
    @Default('') String propertyName,
    @Default('') String prefecture,
    @Default('') String city,
    @Default('') String region,
    @Default('') String address,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}
