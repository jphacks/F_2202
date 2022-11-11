import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/config/config.dart';
import 'package:mobile/infra/google_map_place_api.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/top/search/search_destination_state.dart';

class SearchDestinationController
    extends StateNotifier<SearchDestinationState> {
  SearchDestinationController({
    required this.reader,
  }) : super(const SearchDestinationState());

  final Reader reader;

  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();
  final textEditingController3 = TextEditingController();
  final textEditingController4 = TextEditingController();

  Future<Location> getPlaceDetailFromId(String placeId) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(apiKey: googleMapApiKey);
    PlacesDetailsResponse placesDetailsResponse =
        await places.getDetailsByPlaceId(placeId);
    Location location = placesDetailsResponse.result.geometry!.location;

    return location;
  }

  Future<void> searchDestination({
    required String keyword,
  }) async {
    final result = await GoogleMapPlaceSearchApi.fetchDestination(
      keyword: keyword,
    );

    state = state.copyWith(searchDestinationList: result.asValue!.value);
  }

  Future<void> selectedDestinationState({
    required Destination destination,
    required int index,
  }) async {
    switch (index) {
      case 1:
        textEditingController1.text = destination.placeName;
        final location = await getPlaceDetailFromId(destination.placeId);
        state = state.copyWith(
          destination1: destination.copyWith(
            latLng: LatLng(location.lat, location.lng),
          ),
        );
        return;
      case 2:
        textEditingController2.text = destination.placeName;
        final location = await getPlaceDetailFromId(destination.placeId);
        state = state.copyWith(
          destination2: destination.copyWith(
            latLng: LatLng(location.lat, location.lng),
          ),
        );
        return;
      case 3:
        textEditingController3.text = destination.placeName;
        final location = await getPlaceDetailFromId(destination.placeId);
        state = state.copyWith(
          destination3: destination.copyWith(
            latLng: LatLng(location.lat, location.lng),
          ),
        );
        return;
    }
  }

  Future<Destination> selectedDestination(
      {required Destination destination}) async {
    final result =
        await GoogleMapPlaceSearchApi.getPlaceDetailFromId(destination.placeId);

    return destination.copyWith(latLng: LatLng(result.lat, result.lng));
  }
}
