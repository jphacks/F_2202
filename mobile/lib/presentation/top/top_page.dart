import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/l10n/app_localization.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/top/search/search_destination_page.dart';
import 'package:mobile/presentation/top/top_controller_provider.dart';
import 'package:mobile/presentation/top/top_state.dart';
import 'package:mobile/presentation/widgets/search_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TopPage extends StatefulHookConsumerWidget {
  const TopPage({
    Key? key,
  }) : super(key: key);

  @override
  TopPageState createState() => TopPageState();
}

class TopPageState extends ConsumerState<TopPage> {
  final Completer<GoogleMapController> _mapController = Completer();
  final List<Destination> destinationList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncValue = ref.watch(topControllerProvider);
    final l10n = AppLocalization.of(context)!;

    final _pageController = PageController(
      viewportFraction: 0.85,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: asyncValue.when(
            data: (data) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _googleMap(
                    mapController: _mapController,
                    pageController: _pageController,
                    topState: data,
                  ),
                  Positioned(
                    bottom: 70,
                    child: GlowingButton(
                      title: l10n.search_place_button,
                      onTap: () {
                        _buildButtomSheet();
                      },
                    ),
                  ),
                ],
              );
            },
            error: (error, _) => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Widget _googleMap({
    required Completer<GoogleMapController> mapController,
    required PageController pageController,
    required TopState topState,
  }) {
    return GoogleMap(
      myLocationButtonEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: LatLng(
          topState.currentLatitude,
          topState.currentLongitude,
        ),
        zoom: 13.0,
      ),
      markers: _createMarker(pageController: pageController),
      onMapCreated: (GoogleMapController mapController) {
        _mapController.complete(mapController);
      },
    );
  }

  Set<Marker> _createMarker({
    required PageController pageController,
  }) {
    return destinationList
        .map(
          (selectedDestination) => Marker(
            markerId: MarkerId(selectedDestination.placeId),
            position: selectedDestination.latLng,
            onTap: () {
              final index = destinationList.indexWhere(
                (destination) => destination == selectedDestination,
              );
            },
          ),
        )
        .toSet();
  }

  void _buildButtomSheet() {
    showCupertinoModalBottomSheet(
      context: context,
      expand: true,
      builder: (_) => SearchDestinationPage(onAnimatedTap: (destination) {
        if (destinationList.length < 3 &&
            !destinationList.contains(destination)) {
          _animatedSelectedLocation(location: destination.latLng);
          setState(() {
            destinationList.add(destination);
          });
        }
      }),
    );
  }

  Future<void> _animatedSelectedLocation({required LatLng location}) async {
    if (_mapController.isCompleted) {
      final GoogleMapController mapController = await _mapController.future;
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              location.latitude,
              location.longitude,
            ),
            zoom: await mapController.getZoomLevel(),
          ),
        ),
      );
    }
  }
}
