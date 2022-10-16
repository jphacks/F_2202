import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile/model/destination/destination.dart';

part 'search_destination_state.freezed.dart';

@freezed
class SearchDestinationState with _$SearchDestinationState {
  const factory SearchDestinationState({
    /// 場所
    @Default(<Destination>[]) List<Destination> destination,
  }) = _SearchDestinationState;
}
