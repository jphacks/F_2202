import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'search_destination_state.freezed.dart';

@freezed
class SearchDestinationState with _$SearchDestinationState {
  const factory SearchDestinationState({
    /// 場所
    @Default('') String place,

    /// 住所
    @Default('') String address,

    /// 緯度経度
    @Default(LatLng(0, 0)) LatLng latLng,
  }) = _SearchDestinationState;
}
