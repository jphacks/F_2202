import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/model/property/property.dart';

part 'top_state.freezed.dart';

@freezed
class TopState with _$TopState {
  const factory TopState({
    @Default(0.0) double currentLatitude,
    @Default(0.0) double currentLongitude,
    @Default('') String nextToken,
    @Default(<Property>[]) List<Property> propertyList,
  }) = _TopState;
}