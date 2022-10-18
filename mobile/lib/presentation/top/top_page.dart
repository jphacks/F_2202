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
                    top: 80,
                    right: 30,
                    // TODO(rui): iconがなかったから実装お願いします。
                    child: homeButton(
                      icon: Icons.gps_fixed,
                      onButtonTap: () {},
                      iconSize: 30,
                      buttonSize: 55,
                      buttonColor: Colors.white,
                      buttonIconColor: Colors.black,
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    child: homeButtomList(),
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

  Widget homeButtomList() {
    return Row(
      children: [
        homeButton(
          icon: Icons.chat,
          onButtonTap: () {},
        ),
        const SizedBox(
          width: 30,
        ),
        homeButton(
          icon: Icons.search,
          onButtonTap: () {
            _buildButtomSheet();
          },
        ),
        const SizedBox(
          width: 30,
        ),
        homeButton(
          icon: Icons.favorite,
          onButtonTap: () {},
        ),
      ],
    );
  }

  Widget homeButton({
    required IconData icon,
    required Function()? onButtonTap,
    Color buttonColor = Colors.green,
    Color buttonIconColor = Colors.white,
    double buttonSize = 65,
    double iconSize = 35,
  }) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: buttonColor),
          borderRadius: BorderRadius.circular(10),
        ),
        width: buttonSize,
        height: buttonSize,
        child: Icon(
          icon,
          color: buttonIconColor,
          size: iconSize,
        ),
      ),
    );
  }

  void _buildButtomSheet() {
    final size =  MediaQuery.of(context).size;
    showCupertinoModalBottomSheet(
      topRadius: const Radius.circular(20),
      context: context,
      builder: (_) =>  SizedBox(
        height: size.height * 0.9,
        child: SearchDestinationPage(
          onAnimatedTap: (destination) {
            if (destinationList.length < 3 &&
                !destinationList.contains(destination)) {
              _animatedSelectedLocation(location: destination.latLng);
              setState(() {
                destinationList.add(destination);
              });
            }
          },
        ),
      ),
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
