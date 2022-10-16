import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/infra/google_map_place_api.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

class SearchDestinationController
    extends StateNotifier<SearchDestinationState> {
  SearchDestinationController({
    required this.reader,
  }) : super(const SearchDestinationState());

  final Reader reader;

  Future<void> searchDestination({
    required String keyword,
  }) async {
    final result = await GoogleMapPlaceSearchApi.fetchDestination(
      keyword: keyword,
    );

    state = state.copyWith(destinationList: result.asValue!.value);
  }

  Future<LatLng> selectedDestination({required Destination destination}) async {
    final result =
        await GoogleMapPlaceSearchApi.getPlaceDetailFromId(destination.placeId);

    return LatLng(result.lat, result.lng);
  }
}
