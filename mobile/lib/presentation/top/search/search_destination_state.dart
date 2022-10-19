import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/model/destination/destination.dart';

part 'search_destination_state.freezed.dart';

@freezed
class SearchDestinationState with _$SearchDestinationState {
  const factory SearchDestinationState({
    @Default(<Destination>[]) List<Destination> searchDestinationList,
    @Default(Destination()) Destination destination1,
    @Default(Destination()) Destination destination2,
    @Default(Destination()) Destination destination3,
  }) = _SearchDestinationState;
}
